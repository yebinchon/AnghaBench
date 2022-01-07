
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_14__ {short cmd_slot; scalar_t__ redir_type; long waitms; void* cmd_sock; scalar_t__ clusterdown; TYPE_1__* flags; int reply_type; } ;
typedef TYPE_2__ redisCluster ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_12__ {scalar_t__ mode; } ;


 int CLUSTER_THROW_EXCEPTION (char*,int ) ;
 TYPE_10__* CMD_SOCK (TYPE_2__*) ;
 scalar_t__ MULTI ;
 scalar_t__ REDIR_MOVED ;
 scalar_t__ REDIR_NONE ;
 int SLOT (TYPE_2__*,short) ;
 void* SLOT_SOCK (TYPE_2__*,short) ;
 int cluster_check_response (TYPE_2__*,int *) ;
 int cluster_send_multi (TYPE_2__*,short) ;
 int cluster_sock_write (TYPE_2__*,char const*,int,int ) ;
 int cluster_update_slot (TYPE_2__*) ;
 long mstime () ;
 int redis_cluster_exception_ce ;
 int redis_sock_disconnect (void*,int) ;
 int zend_throw_exception_ex (int ,int ,char*,short) ;

short cluster_send_command(redisCluster *c, short slot, const char *cmd,
                                         int cmd_len)
{
    int resp, timedout = 0;
    long msstart;

    if (!SLOT(c, slot)) {
        zend_throw_exception_ex(redis_cluster_exception_ce, 0,
            "The slot %d is not covered by any node in this cluster", slot);
        return -1;
    }




    c->cmd_slot = slot;
    c->cmd_sock = SLOT_SOCK(c, slot);


    msstart = mstime();




    do {

        if (c->flags->mode == MULTI && CMD_SOCK(c)->mode != MULTI) {

            if (cluster_send_multi(c, slot) == -1) {
                CLUSTER_THROW_EXCEPTION("Unable to enter MULTI mode on requested slot", 0);
                return -1;
            }
        }



        if (cluster_sock_write(c, cmd, cmd_len, 0) == -1) {

            CLUSTER_THROW_EXCEPTION("Can't communicate with any node in the cluster", 0);
            return -1;
        }


        resp = cluster_check_response(c, &c->reply_type);
        if (resp <= 0) {
            break;
        }


        if (resp == 1) {

           if (c->flags->mode == MULTI) {
               CLUSTER_THROW_EXCEPTION("Can't process MULTI sequence when cluster is resharding", 0);
               return -1;
           }


           if (c->redir_type == REDIR_MOVED) {
               cluster_update_slot(c);
               c->cmd_sock = SLOT_SOCK(c, slot);
           }
        }


        timedout = c->waitms ? mstime() - msstart >= c->waitms : 0;
    } while (!c->clusterdown && !timedout);


    if (c->clusterdown) {
        CLUSTER_THROW_EXCEPTION("The Redis Cluster is down (CLUSTERDOWN)", 0);
        return -1;
    } else if (timedout || resp == -1) {

        redis_sock_disconnect(c->cmd_sock, 1);

        if (timedout) {
            CLUSTER_THROW_EXCEPTION(
                "Timed out attempting to find data in the correct node!", 0);
        } else {
            CLUSTER_THROW_EXCEPTION(
                "Error processing response from Redis node!", 0);
        }

        return -1;
    }


    c->redir_type = REDIR_NONE;


    return 0;
}

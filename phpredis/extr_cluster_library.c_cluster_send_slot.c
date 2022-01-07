
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {short cmd_slot; scalar_t__ reply_type; TYPE_7__* cmd_sock; TYPE_1__* flags; } ;
typedef TYPE_2__ redisCluster ;
struct TYPE_11__ {scalar_t__ mode; } ;
struct TYPE_9__ {scalar_t__ mode; } ;
typedef scalar_t__ REDIS_REPLY_TYPE ;


 int CLUSTER_THROW_EXCEPTION (char*,int ) ;
 scalar_t__ MULTI ;
 TYPE_7__* SLOT_SOCK (TYPE_2__*,short) ;
 scalar_t__ TYPE_EOF ;
 scalar_t__ cluster_check_response (TYPE_2__*,scalar_t__*) ;
 int cluster_send_multi (TYPE_2__*,short) ;
 int cluster_sock_write (TYPE_2__*,char*,int,int) ;

int cluster_send_slot(redisCluster *c, short slot, char *cmd,
                             int cmd_len, REDIS_REPLY_TYPE rtype)
{

    c->cmd_slot = slot;
    c->cmd_sock = SLOT_SOCK(c, slot);



    if (c->flags->mode == MULTI && c->cmd_sock->mode != MULTI) {
        if (cluster_send_multi(c, slot) == -1) {
            CLUSTER_THROW_EXCEPTION("Unable to enter MULTI mode on requested slot", 0);
            return -1;
        }
    }


    if (cluster_sock_write(c, cmd, cmd_len, 1) == -1) {
        return -1;
    }


    if (cluster_check_response(c, &c->reply_type) != 0 ||
       (rtype != TYPE_EOF && rtype != c->reply_type)) return -1;


    return 0;
}

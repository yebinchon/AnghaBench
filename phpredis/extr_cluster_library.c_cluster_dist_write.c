
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t cmd_slot; TYPE_3__* cmd_sock; TYPE_1__** master; } ;
typedef TYPE_2__ redisCluster ;
struct TYPE_11__ {scalar_t__ readonly; } ;
struct TYPE_9__ {scalar_t__ slaves; } ;
typedef TYPE_3__ RedisSock ;


 scalar_t__ CLUSTER_SEND_PAYLOAD (TYPE_3__*,char const*,size_t) ;
 scalar_t__ cluster_send_readonly (TYPE_3__*) ;
 TYPE_3__* cluster_slot_sock (TYPE_2__*,size_t,int) ;
 int efree (int*) ;
 int* emalloc (int) ;
 int fyshuffle (int*,int) ;
 scalar_t__ zend_hash_num_elements (scalar_t__) ;

__attribute__((used)) static int cluster_dist_write(redisCluster *c, const char *cmd, size_t sz,
                              int nomaster)
{
    int i, count = 1, *nodes;
    RedisSock *redis_sock;


    if (c->master[c->cmd_slot]->slaves) {
        count += zend_hash_num_elements(c->master[c->cmd_slot]->slaves);
    }


    nodes = emalloc(sizeof(int)*count);



    for (i = 0; i < count; i++) nodes[i] = i;
    fyshuffle(nodes, count);


    for (i = 0; i < count; i++) {

        if (nomaster && nodes[i] == 0)
           continue;


        redis_sock = cluster_slot_sock(c, c->cmd_slot, nodes[i]);
        if (!redis_sock) continue;



        if (nodes[i] == 0 || redis_sock->readonly ||
            cluster_send_readonly(redis_sock) == 0)
        {

            if (CLUSTER_SEND_PAYLOAD(redis_sock, cmd, sz)) {
                c->cmd_sock = redis_sock;
                efree(nodes);
                return 0;
            }
        }
    }


    efree(nodes);


    return -1;
}

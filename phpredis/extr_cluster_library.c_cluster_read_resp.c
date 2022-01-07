
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reply_len; int * line_reply; int reply_type; int cmd_sock; } ;
typedef TYPE_1__ redisCluster ;
typedef int clusterReply ;


 int * cluster_read_sock_resp (int ,int ,int *,int ) ;

clusterReply *cluster_read_resp(redisCluster *c, int status_strings) {
    return cluster_read_sock_resp(c->cmd_sock, c->reply_type,
                                  status_strings ? c->line_reply : ((void*)0),
                                  c->reply_len);
}

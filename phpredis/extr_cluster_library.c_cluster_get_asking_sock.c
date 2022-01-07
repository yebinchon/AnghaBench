
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int redisCluster ;
struct TYPE_2__ {int * sock; } ;
typedef int RedisSock ;


 TYPE_1__* cluster_get_asking_node (int *) ;

__attribute__((used)) static RedisSock *cluster_get_asking_sock(redisCluster *c) {
    return cluster_get_asking_node(c)->sock;
}

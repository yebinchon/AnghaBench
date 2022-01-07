
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sock; int slots; struct TYPE_5__* slaves; } ;
typedef TYPE_1__ redisClusterNode ;


 int efree (TYPE_1__*) ;
 int redis_free_socket (int ) ;
 int zend_hash_destroy (TYPE_1__*) ;
 int zend_llist_destroy (int *) ;

void cluster_free_node(redisClusterNode *node) {
    if (node->slaves) {
        zend_hash_destroy(node->slaves);
        efree(node->slaves);
    }

    zend_llist_destroy(&node->slots);
    redis_free_socket(node->sock);

    efree(node);
}

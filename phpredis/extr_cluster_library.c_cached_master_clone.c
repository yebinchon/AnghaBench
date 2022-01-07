
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int slots; } ;
typedef TYPE_2__ redisClusterNode ;
typedef int redisCluster ;
struct TYPE_8__ {int port; int addr; } ;
struct TYPE_10__ {size_t slots; TYPE_4__* slot; TYPE_1__ host; } ;
typedef TYPE_3__ redisCachedMaster ;
struct TYPE_11__ {int low; } ;


 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 TYPE_2__* cluster_node_create (int *,int ,int ,int ,int ,int ) ;
 int zend_llist_add_element (int *,TYPE_4__*) ;

__attribute__((used)) static redisClusterNode*
cached_master_clone(redisCluster *c, redisCachedMaster *cm) {
    redisClusterNode *node;
    size_t i;

    node = cluster_node_create(c, ZSTR_VAL(cm->host.addr), ZSTR_LEN(cm->host.addr),
                               cm->host.port, cm->slot[0].low, 0);


    for (i = 0; i < cm->slots; i++) {
        zend_llist_add_element(&node->slots, &cm->slot[i]);
    }

    return node;
}

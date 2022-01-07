
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zend_ulong ;
struct TYPE_8__ {TYPE_2__* slaves; } ;
typedef TYPE_1__ redisClusterNode ;
struct TYPE_9__ {int nNextFreeElement; } ;


 int ALLOC_HASHTABLE (TYPE_2__*) ;
 int ht_free_slave ;
 int * zend_hash_index_update_ptr (TYPE_2__*,int,TYPE_1__*) ;
 int zend_hash_init (TYPE_2__*,int ,int *,int ,int ) ;

int
cluster_node_add_slave(redisClusterNode *master, redisClusterNode *slave)
{
    zend_ulong index;


    if (!master->slaves) {
        ALLOC_HASHTABLE(master->slaves);
        zend_hash_init(master->slaves, 0, ((void*)0), ht_free_slave, 0);
        index = 1;
    } else {
        index = master->slaves->nNextFreeElement;
    }

    return zend_hash_index_update_ptr(master->slaves, index, slave) != ((void*)0);
}

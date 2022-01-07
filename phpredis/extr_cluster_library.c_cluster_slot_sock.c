
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zend_ulong ;
struct TYPE_3__ {int * sock; } ;
typedef TYPE_1__ redisClusterNode ;
typedef int redisCluster ;
typedef int RedisSock ;


 int SLOT_SLAVES (int *,unsigned short) ;
 int * SLOT_SOCK (int *,unsigned short) ;
 TYPE_1__* zend_hash_index_find_ptr (int ,scalar_t__) ;

__attribute__((used)) static RedisSock *cluster_slot_sock(redisCluster *c, unsigned short slot,
                                    zend_ulong slaveidx)
{
    redisClusterNode *node;


    if (slaveidx == 0) {
        return SLOT_SOCK(c, slot);
    }


    if (!SLOT_SLAVES(c, slot) ||
        (node = zend_hash_index_find_ptr(SLOT_SLAVES(c,slot), slaveidx)) == ((void*)0)
    ) {
        return ((void*)0);
    }


    return node->sock;
}

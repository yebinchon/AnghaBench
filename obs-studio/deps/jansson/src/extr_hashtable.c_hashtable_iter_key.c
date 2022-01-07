
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* key; } ;
typedef TYPE_1__ pair_t ;
typedef int list_t ;


 TYPE_1__* ordered_list_to_pair (int *) ;

void *hashtable_iter_key(void *iter)
{
    pair_t *pair = ordered_list_to_pair((list_t *)iter);
    return pair->key;
}

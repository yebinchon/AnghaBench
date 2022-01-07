
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ordered_list; } ;
typedef TYPE_1__ hashtable_t ;


 void* hashtable_iter_next (TYPE_1__*,int *) ;

void *hashtable_iter(hashtable_t *hashtable)
{
    return hashtable_iter_next(hashtable, &hashtable->ordered_list);
}

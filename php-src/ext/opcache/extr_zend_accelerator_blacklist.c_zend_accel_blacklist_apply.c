
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int * entries; } ;
typedef TYPE_1__ zend_blacklist ;
typedef int (* blacklist_apply_func_arg_t ) (int *,void*) ;



void zend_accel_blacklist_apply(zend_blacklist *blacklist, blacklist_apply_func_arg_t func, void *argument)
{
 int i;

 for (i = 0; i < blacklist->pos; i++) {
  func(&blacklist->entries[i], argument);
 }
}

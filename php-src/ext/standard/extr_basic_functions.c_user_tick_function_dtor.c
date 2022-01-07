
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arg_count; int * arguments; } ;
typedef TYPE_1__ user_tick_function_entry ;


 int efree (int *) ;
 int zval_ptr_dtor (int *) ;

void user_tick_function_dtor(user_tick_function_entry *tick_function_entry)
{
 int i;

 for (i = 0; i < tick_function_entry->arg_count; i++) {
  zval_ptr_dtor(&tick_function_entry->arguments[i]);
 }
 efree(tick_function_entry->arguments);
}

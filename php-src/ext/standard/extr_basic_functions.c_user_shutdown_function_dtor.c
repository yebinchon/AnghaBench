
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int arg_count; struct TYPE_5__* arguments; } ;
typedef TYPE_1__ php_shutdown_function_entry ;


 TYPE_1__* Z_PTR_P (int *) ;
 int efree (TYPE_1__*) ;
 int zval_ptr_dtor (TYPE_1__*) ;

void user_shutdown_function_dtor(zval *zv)
{
 int i;
 php_shutdown_function_entry *shutdown_function_entry = Z_PTR_P(zv);

 for (i = 0; i < shutdown_function_entry->arg_count; i++) {
  zval_ptr_dtor(&shutdown_function_entry->arguments[i]);
 }
 efree(shutdown_function_entry->arguments);
 efree(shutdown_function_entry);
}

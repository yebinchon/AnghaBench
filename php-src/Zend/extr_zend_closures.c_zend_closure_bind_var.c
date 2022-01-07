
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_4__ {int static_variables_ptr; } ;
struct TYPE_5__ {TYPE_1__ op_array; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
typedef TYPE_3__ zend_closure ;
typedef int HashTable ;


 int * ZEND_MAP_PTR_GET (int ) ;
 scalar_t__ Z_OBJ_P (int *) ;
 int zend_hash_update (int *,int *,int *) ;

void zend_closure_bind_var(zval *closure_zv, zend_string *var_name, zval *var)
{
 zend_closure *closure = (zend_closure *) Z_OBJ_P(closure_zv);
 HashTable *static_variables = ZEND_MAP_PTR_GET(closure->func.op_array.static_variables_ptr);
 zend_hash_update(static_variables, var_name, var);
}

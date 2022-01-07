
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int static_variables_ptr; } ;
struct TYPE_7__ {TYPE_1__ op_array; } ;
struct TYPE_8__ {TYPE_2__ func; } ;
typedef TYPE_3__ zend_closure ;
typedef int uint32_t ;
struct TYPE_9__ {scalar_t__ arData; } ;
typedef TYPE_4__ HashTable ;


 TYPE_4__* ZEND_MAP_PTR_GET (int ) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 scalar_t__ Z_OBJ_P (int *) ;
 int zval_ptr_dtor (int *) ;

void zend_closure_bind_var_ex(zval *closure_zv, uint32_t offset, zval *val)
{
 zend_closure *closure = (zend_closure *) Z_OBJ_P(closure_zv);
 HashTable *static_variables = ZEND_MAP_PTR_GET(closure->func.op_array.static_variables_ptr);
 zval *var = (zval*)((char*)static_variables->arData + offset);
 zval_ptr_dtor(var);
 ZVAL_COPY_VALUE(var, val);
}

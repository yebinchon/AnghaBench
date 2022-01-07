
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {int ce; } ;
struct TYPE_5__ {int fptr_cmp; TYPE_1__ std; } ;
typedef TYPE_2__ spl_heap_object ;


 scalar_t__ EG (int ) ;
 int FAILURE ;
 int SUCCESS ;
 int Z_OBJ_P (int *) ;
 int exception ;
 int zend_call_method_with_2_params (int ,int ,int *,char*,int *,int *,int *) ;
 int zval_get_long (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int spl_ptr_heap_cmp_cb_helper(zval *object, spl_heap_object *heap_object, zval *a, zval *b, zend_long *result) {
 zval zresult;

 zend_call_method_with_2_params(Z_OBJ_P(object), heap_object->std.ce, &heap_object->fptr_cmp, "compare", &zresult, a, b);

 if (EG(exception)) {
  return FAILURE;
 }

 *result = zval_get_long(&zresult);
 zval_ptr_dtor(&zresult);

 return SUCCESS;
}

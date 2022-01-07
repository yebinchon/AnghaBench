
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int closure; TYPE_3__* func_ptr; int obj; } ;
typedef TYPE_2__ autoload_func_info ;
struct TYPE_5__ {int fn_flags; int function_name; } ;
struct TYPE_7__ {TYPE_1__ common; } ;


 scalar_t__ UNEXPECTED (int) ;
 int ZEND_ACC_CALL_VIA_TRAMPOLINE ;
 int Z_ISUNDEF (int ) ;
 scalar_t__ Z_PTR_P (int *) ;
 int efree (TYPE_2__*) ;
 int zend_free_trampoline (TYPE_3__*) ;
 int zend_string_release_ex (int ,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void autoload_func_info_dtor(zval *element)
{
 autoload_func_info *alfi = (autoload_func_info*)Z_PTR_P(element);
 if (!Z_ISUNDEF(alfi->obj)) {
  zval_ptr_dtor(&alfi->obj);
 }
 if (alfi->func_ptr &&
  UNEXPECTED(alfi->func_ptr->common.fn_flags & ZEND_ACC_CALL_VIA_TRAMPOLINE)) {
  zend_string_release_ex(alfi->func_ptr->common.function_name, 0);
  zend_free_trampoline(alfi->func_ptr);
 }
 if (!Z_ISUNDEF(alfi->closure)) {
  zval_ptr_dtor(&alfi->closure);
 }
 efree(alfi);
}

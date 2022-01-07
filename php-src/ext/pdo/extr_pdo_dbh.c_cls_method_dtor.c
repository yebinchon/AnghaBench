
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {scalar_t__ function_name; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
typedef TYPE_2__ zend_function ;


 scalar_t__ Z_PTR_P (int *) ;
 int efree (TYPE_2__*) ;
 int zend_string_release_ex (scalar_t__,int ) ;

__attribute__((used)) static void cls_method_dtor(zval *el) {
 zend_function *func = (zend_function*)Z_PTR_P(el);
 if (func->common.function_name) {
  zend_string_release_ex(func->common.function_name, 0);
 }
 efree(func);
}

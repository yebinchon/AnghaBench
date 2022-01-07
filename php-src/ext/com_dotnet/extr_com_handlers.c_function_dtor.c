
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {struct TYPE_3__* arg_info; int function_name; } ;
typedef TYPE_1__ zend_internal_function ;


 scalar_t__ Z_PTR_P (int *) ;
 int efree (TYPE_1__*) ;
 int zend_string_release_ex (int ,int ) ;

__attribute__((used)) static void function_dtor(zval *zv)
{
 zend_internal_function *f = (zend_internal_function*)Z_PTR_P(zv);

 zend_string_release_ex(f->function_name, 0);
 if (f->arg_info) {
  efree(f->arg_info);
 }
 efree(f);
}

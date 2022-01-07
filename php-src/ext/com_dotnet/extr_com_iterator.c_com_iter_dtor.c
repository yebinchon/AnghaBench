
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct php_com_iterator {int zdata; int safe_array; int v; scalar_t__ ev; } ;


 int IEnumVARIANT_Release (scalar_t__) ;
 int VariantClear (int *) ;
 scalar_t__ Z_PTR (int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void com_iter_dtor(zend_object_iterator *iter)
{
 struct php_com_iterator *I = (struct php_com_iterator*)Z_PTR(iter->data);

 if (I->ev) {
  IEnumVARIANT_Release(I->ev);
 }
 VariantClear(&I->v);
 VariantClear(&I->safe_array);
 zval_ptr_dtor(&I->zdata);
}

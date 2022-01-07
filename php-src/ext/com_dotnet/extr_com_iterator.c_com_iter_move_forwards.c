
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef void* zend_ulong ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct php_com_iterator {scalar_t__ key; int zdata; int code_page; int v; int safe_array; scalar_t__ sa_max; scalar_t__ ev; } ;
typedef scalar_t__ ULONG ;
typedef int LONG ;


 int IEnumVARIANT_Next (scalar_t__,int,int *,unsigned long*) ;
 scalar_t__ IS_UNDEF ;
 scalar_t__ SUCCEEDED (int ) ;
 int VariantClear (int *) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_UNDEF (int *) ;
 scalar_t__ Z_PTR (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ php_com_safearray_get_elem (int *,int *,int ) ;
 int php_com_zval_from_variant (int *,int *,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void com_iter_move_forwards(zend_object_iterator *iter)
{
 struct php_com_iterator *I = (struct php_com_iterator*)Z_PTR(iter->data);
 unsigned long n_fetched;
 zval ptr;


 VariantClear(&I->v);

 if (Z_TYPE(I->zdata) != IS_UNDEF) {
  zval_ptr_dtor(&I->zdata);
  ZVAL_UNDEF(&I->zdata);
 }

 if (I->ev) {

  if (SUCCEEDED(IEnumVARIANT_Next(I->ev, 1, &I->v, &n_fetched)) && n_fetched > 0) {
   I->key++;
  } else {

   I->key = (zend_ulong)-1;
   return;
  }
 } else {

  if (I->key >= (ULONG) I->sa_max) {
   I->key = (zend_ulong)-1;
   return;
  }
  I->key++;
  if (php_com_safearray_get_elem(&I->safe_array, &I->v, (LONG)I->key) == 0) {
   I->key = (zend_ulong)-1;
   return;
  }
 }

 ZVAL_NULL(&ptr);
 php_com_zval_from_variant(&ptr, &I->v, I->code_page);

 ZVAL_COPY_VALUE(&I->zdata, &ptr);
}

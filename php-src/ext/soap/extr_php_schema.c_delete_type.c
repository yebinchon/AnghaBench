
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* sdlTypePtr ;
struct TYPE_5__ {struct TYPE_5__* restrictions; struct TYPE_5__* enumeration; int pattern; int whiteSpace; int maxLength; int minLength; int length; int fractionDigits; int totalDigits; int maxInclusive; int maxExclusive; int minInclusive; int minExclusive; scalar_t__ model; struct TYPE_5__* attributes; struct TYPE_5__* elements; struct TYPE_5__* fixed; struct TYPE_5__* def; struct TYPE_5__* namens; struct TYPE_5__* name; } ;


 int ZVAL_PTR (int *,scalar_t__) ;
 TYPE_1__* Z_PTR_P (int *) ;
 int delete_model (int *) ;
 int delete_restriction_var_char_int (int ) ;
 int delete_restriction_var_int (int ) ;
 int efree (TYPE_1__*) ;
 int zend_hash_destroy (TYPE_1__*) ;

void delete_type(zval *zv)
{
 sdlTypePtr type = Z_PTR_P(zv);

 if (type->name) {
  efree(type->name);
 }
 if (type->namens) {
  efree(type->namens);
 }
 if (type->def) {
  efree(type->def);
 }
 if (type->fixed) {
  efree(type->fixed);
 }
 if (type->elements) {
  zend_hash_destroy(type->elements);
  efree(type->elements);
 }
 if (type->attributes) {
  zend_hash_destroy(type->attributes);
  efree(type->attributes);
 }
 if (type->model) {
  zval zv;
  ZVAL_PTR(&zv, type->model);
  delete_model(&zv);
 }
 if (type->restrictions) {
  delete_restriction_var_int(type->restrictions->minExclusive);
  delete_restriction_var_int(type->restrictions->minInclusive);
  delete_restriction_var_int(type->restrictions->maxExclusive);
  delete_restriction_var_int(type->restrictions->maxInclusive);
  delete_restriction_var_int(type->restrictions->totalDigits);
  delete_restriction_var_int(type->restrictions->fractionDigits);
  delete_restriction_var_int(type->restrictions->length);
  delete_restriction_var_int(type->restrictions->minLength);
  delete_restriction_var_int(type->restrictions->maxLength);
  delete_restriction_var_char_int(type->restrictions->whiteSpace);
  delete_restriction_var_char_int(type->restrictions->pattern);
  if (type->restrictions->enumeration) {
   zend_hash_destroy(type->restrictions->enumeration);
   efree(type->restrictions->enumeration);
  }
  efree(type->restrictions);
 }
 efree(type);
}

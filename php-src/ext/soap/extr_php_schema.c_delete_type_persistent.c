
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* sdlTypePtr ;
struct TYPE_5__ {struct TYPE_5__* restrictions; struct TYPE_5__* enumeration; int pattern; int whiteSpace; int maxLength; int minLength; int length; int fractionDigits; int totalDigits; int maxInclusive; int maxExclusive; int minInclusive; int minExclusive; scalar_t__ model; struct TYPE_5__* attributes; struct TYPE_5__* elements; struct TYPE_5__* fixed; struct TYPE_5__* def; struct TYPE_5__* namens; struct TYPE_5__* name; } ;


 TYPE_1__* Z_PTR_P (int *) ;
 int delete_model_persistent_int (scalar_t__) ;
 int delete_restriction_var_char_persistent_int (int ) ;
 int delete_restriction_var_int_persistent (int ) ;
 int free (TYPE_1__*) ;
 int zend_hash_destroy (TYPE_1__*) ;

void delete_type_persistent(zval *zv)
{
 sdlTypePtr type = Z_PTR_P(zv);
 if (type->name) {
  free(type->name);
 }
 if (type->namens) {
  free(type->namens);
 }
 if (type->def) {
  free(type->def);
 }
 if (type->fixed) {
  free(type->fixed);
 }
 if (type->elements) {
  zend_hash_destroy(type->elements);
  free(type->elements);
 }
 if (type->attributes) {
  zend_hash_destroy(type->attributes);
  free(type->attributes);
 }
 if (type->model) {
  delete_model_persistent_int(type->model);
 }
 if (type->restrictions) {
  delete_restriction_var_int_persistent(type->restrictions->minExclusive);
  delete_restriction_var_int_persistent(type->restrictions->minInclusive);
  delete_restriction_var_int_persistent(type->restrictions->maxExclusive);
  delete_restriction_var_int_persistent(type->restrictions->maxInclusive);
  delete_restriction_var_int_persistent(type->restrictions->totalDigits);
  delete_restriction_var_int_persistent(type->restrictions->fractionDigits);
  delete_restriction_var_int_persistent(type->restrictions->length);
  delete_restriction_var_int_persistent(type->restrictions->minLength);
  delete_restriction_var_int_persistent(type->restrictions->maxLength);
  delete_restriction_var_char_persistent_int(type->restrictions->whiteSpace);
  delete_restriction_var_char_persistent_int(type->restrictions->pattern);
  if (type->restrictions->enumeration) {
   zend_hash_destroy(type->restrictions->enumeration);
   free(type->restrictions->enumeration);
  }
  free(type->restrictions);
 }
 free(type);
}

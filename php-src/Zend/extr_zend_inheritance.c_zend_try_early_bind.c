
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_12__ {int ce_flags; int name; } ;
typedef TYPE_1__ zend_class_entry ;
typedef int zend_bool ;
typedef scalar_t__ inheritance_status ;
typedef int Bucket ;


 int CG (int ) ;
 int EG (int ) ;
 scalar_t__ EXPECTED (int) ;
 int E_COMPILE_ERROR ;
 scalar_t__ INHERITANCE_SUCCESS ;
 scalar_t__ INHERITANCE_UNRESOLVED ;
 scalar_t__ UNEXPECTED (int ) ;
 int ZEND_ACC_EXPLICIT_ABSTRACT_CLASS ;
 int ZEND_ACC_IMPLICIT_ABSTRACT_CLASS ;
 int ZEND_ACC_INTERFACE ;
 int ZEND_ACC_LINKED ;
 int ZEND_ACC_TRAIT ;
 int ZEND_ACC_UNRESOLVED_VARIANCE ;
 int ZEND_ASSERT (int) ;
 int ZSTR_VAL (int ) ;
 int class_table ;
 int zend_build_properties_info_table (TYPE_1__*) ;
 scalar_t__ zend_can_early_bind (TYPE_1__*,TYPE_1__*) ;
 int zend_do_inheritance_ex (TYPE_1__*,TYPE_1__*,int) ;
 int zend_error_noreturn (int ,char*,int ,int ) ;
 int zend_get_object_type (TYPE_1__*) ;
 int * zend_hash_add_ptr (int ,int *,TYPE_1__*) ;
 int * zend_hash_set_bucket_key (int ,int *,int *) ;
 int zend_verify_abstract_class (TYPE_1__*) ;

zend_bool zend_try_early_bind(zend_class_entry *ce, zend_class_entry *parent_ce, zend_string *lcname, zval *delayed_early_binding)
{
 inheritance_status status = zend_can_early_bind(ce, parent_ce);

 if (EXPECTED(status != INHERITANCE_UNRESOLVED)) {
  if (delayed_early_binding) {
   if (UNEXPECTED(zend_hash_set_bucket_key(EG(class_table), (Bucket*)delayed_early_binding, lcname) == ((void*)0))) {
    zend_error_noreturn(E_COMPILE_ERROR, "Cannot declare %s %s, because the name is already in use", zend_get_object_type(ce), ZSTR_VAL(ce->name));
    return 0;
   }
  } else {
   if (UNEXPECTED(zend_hash_add_ptr(CG(class_table), lcname, ce) == ((void*)0))) {
    return 0;
   }
  }
  zend_do_inheritance_ex(ce, parent_ce, status == INHERITANCE_SUCCESS);
  zend_build_properties_info_table(ce);
  if ((ce->ce_flags & (ZEND_ACC_IMPLICIT_ABSTRACT_CLASS|ZEND_ACC_INTERFACE|ZEND_ACC_TRAIT|ZEND_ACC_EXPLICIT_ABSTRACT_CLASS)) == ZEND_ACC_IMPLICIT_ABSTRACT_CLASS) {
   zend_verify_abstract_class(ce);
  }
  ZEND_ASSERT(!(ce->ce_flags & ZEND_ACC_UNRESOLVED_VARIANCE));
  ce->ce_flags |= ZEND_ACC_LINKED;
  return 1;
 }
 return 0;
}

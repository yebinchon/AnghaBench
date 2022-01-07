
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ce_flags; size_t num_traits; int name; } ;
typedef TYPE_1__ zend_class_entry ;
typedef size_t uint32_t ;


 int E_COMPILE_ERROR ;
 scalar_t__ UNEXPECTED (int) ;
 int ZEND_ACC_TRAIT ;
 int ZSTR_VAL (int ) ;
 int zend_error_noreturn (int ,char*,int ,...) ;

__attribute__((used)) static uint32_t zend_check_trait_usage(zend_class_entry *ce, zend_class_entry *trait, zend_class_entry **traits)
{
 uint32_t i;

 if (UNEXPECTED((trait->ce_flags & ZEND_ACC_TRAIT) != ZEND_ACC_TRAIT)) {
  zend_error_noreturn(E_COMPILE_ERROR, "Class %s is not a trait, Only traits may be used in 'as' and 'insteadof' statements", ZSTR_VAL(trait->name));
  return 0;
 }

 for (i = 0; i < ce->num_traits; i++) {
  if (traits[i] == trait) {
   return i;
  }
 }
 zend_error_noreturn(E_COMPILE_ERROR, "Required Trait %s wasn't added to %s", ZSTR_VAL(trait->name), ZSTR_VAL(ce->name));
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_function ;
typedef int zend_class_entry ;
typedef scalar_t__ inheritance_status ;


 scalar_t__ EXPECTED (int) ;
 scalar_t__ INHERITANCE_ERROR ;
 scalar_t__ INHERITANCE_SUCCESS ;
 scalar_t__ INHERITANCE_UNRESOLVED ;
 scalar_t__ UNEXPECTED (int) ;
 int ZEND_ASSERT (int) ;
 int add_compatibility_obligation (int *,int const*,int const*) ;
 int emit_incompatible_method_error (int const*,int const*,scalar_t__) ;
 scalar_t__ zend_do_perform_implementation_check (int const*,int const*) ;

__attribute__((used)) static void perform_delayable_implementation_check(
  zend_class_entry *ce, const zend_function *fe,
  const zend_function *proto)
{
 inheritance_status status = zend_do_perform_implementation_check(fe, proto);
 if (UNEXPECTED(status != INHERITANCE_SUCCESS)) {
  if (EXPECTED(status == INHERITANCE_UNRESOLVED)) {
   add_compatibility_obligation(ce, fe, proto);
  } else {
   ZEND_ASSERT(status == INHERITANCE_ERROR);
   emit_incompatible_method_error(fe, proto, status);
  }
 }
}

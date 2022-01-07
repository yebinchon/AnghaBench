
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* constructor; int name; int __debugInfo; int destructor; int unserialize; int unserialize_func; int serialize; int serialize_func; int clone; int __tostring; int __callstatic; int __call; int __isset; int __unset; int __set; int __get; scalar_t__ iterator_funcs_ptr; int get_iterator; int create_object; struct TYPE_7__* parent; } ;
typedef TYPE_3__ zend_class_entry ;
struct TYPE_5__ {int fn_flags; int function_name; } ;
struct TYPE_6__ {TYPE_1__ common; } ;


 scalar_t__ EXPECTED (int) ;
 int E_ERROR ;
 scalar_t__ UNEXPECTED (int) ;
 int ZEND_ACC_FINAL ;
 int ZEND_ASSERT (scalar_t__) ;
 int ZSTR_VAL (int ) ;
 int zend_error_noreturn (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void do_inherit_parent_constructor(zend_class_entry *ce)
{
 zend_class_entry *parent = ce->parent;

 ZEND_ASSERT(parent != ((void*)0));


 ce->create_object = parent->create_object;


 if (EXPECTED(!ce->get_iterator)) {
  ce->get_iterator = parent->get_iterator;
 }
 if (parent->iterator_funcs_ptr) {

  ZEND_ASSERT(ce->iterator_funcs_ptr);
 }
 if (EXPECTED(!ce->__get)) {
  ce->__get = parent->__get;
 }
 if (EXPECTED(!ce->__set)) {
  ce->__set = parent->__set;
 }
 if (EXPECTED(!ce->__unset)) {
  ce->__unset = parent->__unset;
 }
 if (EXPECTED(!ce->__isset)) {
  ce->__isset = parent->__isset;
 }
 if (EXPECTED(!ce->__call)) {
  ce->__call = parent->__call;
 }
 if (EXPECTED(!ce->__callstatic)) {
  ce->__callstatic = parent->__callstatic;
 }
 if (EXPECTED(!ce->__tostring)) {
  ce->__tostring = parent->__tostring;
 }
 if (EXPECTED(!ce->clone)) {
  ce->clone = parent->clone;
 }
 if (EXPECTED(!ce->serialize_func)) {
  ce->serialize_func = parent->serialize_func;
 }
 if (EXPECTED(!ce->serialize)) {
  ce->serialize = parent->serialize;
 }
 if (EXPECTED(!ce->unserialize_func)) {
  ce->unserialize_func = parent->unserialize_func;
 }
 if (EXPECTED(!ce->unserialize)) {
  ce->unserialize = parent->unserialize;
 }
 if (!ce->destructor) {
  ce->destructor = parent->destructor;
 }
 if (EXPECTED(!ce->__debugInfo)) {
  ce->__debugInfo = parent->__debugInfo;
 }

 if (ce->constructor) {
  if (parent->constructor && UNEXPECTED(parent->constructor->common.fn_flags & ZEND_ACC_FINAL)) {
   zend_error_noreturn(E_ERROR, "Cannot override final %s::%s() with %s::%s()",
    ZSTR_VAL(parent->name), ZSTR_VAL(parent->constructor->common.function_name),
    ZSTR_VAL(ce->name), ZSTR_VAL(ce->constructor->common.function_name));
  }
  return;
 }

 ce->constructor = parent->constructor;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_5__ {int * name; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_6__ {scalar_t__ ce; } ;
typedef TYPE_2__ zend_class_constant ;
typedef int zend_bool ;
typedef int HashTable ;


 int E_COMPILE_ERROR ;
 int ZSTR_VAL (int *) ;
 scalar_t__ Z_PTR_P (int *) ;
 int zend_error_noreturn (int ,char*,int ,int ) ;
 int * zend_hash_find_ex (int *,int *,int) ;

__attribute__((used)) static zend_bool do_inherit_constant_check(HashTable *child_constants_table, zend_class_constant *parent_constant, zend_string *name, const zend_class_entry *iface)
{
 zval *zv = zend_hash_find_ex(child_constants_table, name, 1);
 zend_class_constant *old_constant;

 if (zv != ((void*)0)) {
  old_constant = (zend_class_constant*)Z_PTR_P(zv);
  if (old_constant->ce != parent_constant->ce) {
   zend_error_noreturn(E_COMPILE_ERROR, "Cannot inherit previously-inherited or override constant %s from interface %s", ZSTR_VAL(name), ZSTR_VAL(iface->name));
  }
  return 0;
 }
 return 1;
}

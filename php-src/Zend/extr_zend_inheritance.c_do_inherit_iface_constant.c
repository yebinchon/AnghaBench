
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_12__ {int type; int constants_table; int ce_flags; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_13__ {int value; } ;
typedef TYPE_2__ zend_class_constant ;


 scalar_t__ IS_CONSTANT_AST ;
 int ZEND_ACC_CONSTANTS_UPDATED ;
 int ZEND_INTERNAL_CLASS ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ do_inherit_constant_check (int *,TYPE_2__*,int *,TYPE_1__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_2__* pemalloc (int,int) ;
 int zend_hash_update_ptr (int *,int *,TYPE_2__*) ;

__attribute__((used)) static void do_inherit_iface_constant(zend_string *name, zend_class_constant *c, zend_class_entry *ce, zend_class_entry *iface)
{
 if (do_inherit_constant_check(&ce->constants_table, c, name, iface)) {
  zend_class_constant *ct;
  if (Z_TYPE(c->value) == IS_CONSTANT_AST) {
   ce->ce_flags &= ~ZEND_ACC_CONSTANTS_UPDATED;
  }
  if (ce->type & ZEND_INTERNAL_CLASS) {
   ct = pemalloc(sizeof(zend_class_constant), 1);
   memcpy(ct, c, sizeof(zend_class_constant));
   c = ct;
  }
  zend_hash_update_ptr(&ce->constants_table, name, c);
 }
}

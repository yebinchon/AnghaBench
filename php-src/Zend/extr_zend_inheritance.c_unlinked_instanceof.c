
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int ce_flags; size_t num_interfaces; TYPE_1__* interface_names; struct TYPE_9__** interfaces; int parent_name; struct TYPE_9__* parent; } ;
typedef TYPE_2__ zend_class_entry ;
typedef int zend_bool ;
typedef size_t uint32_t ;
struct TYPE_8__ {int * lc_name; int name; } ;


 int ZEND_ACC_LINKED ;
 int ZEND_ACC_RESOLVED_INTERFACES ;
 int ZEND_ACC_RESOLVED_PARENT ;
 int ZEND_FETCH_CLASS_ALLOW_UNLINKED ;
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ;
 int instanceof_function (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* zend_lookup_class_ex (int ,int *,int) ;

__attribute__((used)) static zend_bool unlinked_instanceof(zend_class_entry *ce1, zend_class_entry *ce2) {
 zend_class_entry *ce;

 if (ce1 == ce2) {
  return 1;
 }

 if (ce1->ce_flags & ZEND_ACC_LINKED) {
  return instanceof_function(ce1, ce2);
 }

 ce = ce1;
 while (ce->parent) {
  if (ce->ce_flags & ZEND_ACC_RESOLVED_PARENT) {
   ce = ce->parent;
  } else {
   ce = zend_lookup_class_ex(ce->parent_name, ((void*)0),
    ZEND_FETCH_CLASS_ALLOW_UNLINKED | ZEND_FETCH_CLASS_NO_AUTOLOAD);
   if (!ce) {
    break;
   }
  }
  if (ce == ce2) {
   return 1;
  }
 }

 if (ce1->num_interfaces) {
  uint32_t i;
  if (ce1->ce_flags & ZEND_ACC_RESOLVED_INTERFACES) {


   for (i = 0; i < ce1->num_interfaces; i++) {
    if (unlinked_instanceof(ce1->interfaces[i], ce2)) {
     return 1;
    }
   }
  } else {
   for (i = 0; i < ce1->num_interfaces; i++) {
    ce = zend_lookup_class_ex(
     ce1->interface_names[i].name, ce1->interface_names[i].lc_name,
     ZEND_FETCH_CLASS_ALLOW_UNLINKED | ZEND_FETCH_CLASS_NO_AUTOLOAD);
    if (ce && unlinked_instanceof(ce, ce2)) {
     return 1;
    }
   }
  }
 }

 return 0;
}

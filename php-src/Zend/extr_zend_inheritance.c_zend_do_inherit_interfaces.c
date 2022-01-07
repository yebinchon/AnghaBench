
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int num_interfaces; scalar_t__ type; struct TYPE_8__** interfaces; int ce_flags; } ;
typedef TYPE_1__ zend_class_entry ;
typedef int uint32_t ;


 int ZEND_ACC_RESOLVED_INTERFACES ;
 scalar_t__ ZEND_INTERNAL_CLASS ;
 int do_implement_interface (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ erealloc (TYPE_1__**,int) ;
 scalar_t__ realloc (TYPE_1__**,int) ;

__attribute__((used)) static void zend_do_inherit_interfaces(zend_class_entry *ce, const zend_class_entry *iface)
{

 uint32_t i, ce_num, if_num = iface->num_interfaces;
 zend_class_entry *entry;

 ce_num = ce->num_interfaces;

 if (ce->type == ZEND_INTERNAL_CLASS) {
  ce->interfaces = (zend_class_entry **) realloc(ce->interfaces, sizeof(zend_class_entry *) * (ce_num + if_num));
 } else {
  ce->interfaces = (zend_class_entry **) erealloc(ce->interfaces, sizeof(zend_class_entry *) * (ce_num + if_num));
 }


 while (if_num--) {
  entry = iface->interfaces[if_num];
  for (i = 0; i < ce_num; i++) {
   if (ce->interfaces[i] == entry) {
    break;
   }
  }
  if (i == ce_num) {
   ce->interfaces[ce->num_interfaces++] = entry;
  }
 }
 ce->ce_flags |= ZEND_ACC_RESOLVED_INTERFACES;


 while (ce_num < ce->num_interfaces) {
  do_implement_interface(ce, ce->interfaces[ce_num++]);
 }
}

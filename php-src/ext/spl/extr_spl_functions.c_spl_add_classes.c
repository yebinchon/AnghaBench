
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {struct TYPE_5__* parent; } ;
typedef TYPE_1__ zend_class_entry ;


 int spl_add_class_name (int *,TYPE_1__*,int,int) ;
 int spl_add_interfaces (int *,TYPE_1__*,int,int) ;

int spl_add_classes(zend_class_entry *pce, zval *list, int sub, int allow, int ce_flags)
{
 if (!pce) {
  return 0;
 }
 spl_add_class_name(list, pce, allow, ce_flags);
 if (sub) {
  spl_add_interfaces(list, pce, allow, ce_flags);
  while (pce->parent) {
   pce = pce->parent;
   spl_add_classes(pce, list, sub, allow, ce_flags);
  }
 }
 return 0;
}

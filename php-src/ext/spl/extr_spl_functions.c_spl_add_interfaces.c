
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {size_t num_interfaces; int ce_flags; int * interfaces; } ;
typedef TYPE_1__ zend_class_entry ;
typedef size_t uint32_t ;


 int ZEND_ACC_LINKED ;
 int ZEND_ASSERT (int) ;
 int spl_add_class_name (int *,int ,int,int) ;

void spl_add_interfaces(zval *list, zend_class_entry * pce, int allow, int ce_flags)
{
 uint32_t num_interfaces;

 if (pce->num_interfaces) {
  ZEND_ASSERT(pce->ce_flags & ZEND_ACC_LINKED);
  for (num_interfaces = 0; num_interfaces < pce->num_interfaces; num_interfaces++) {
   spl_add_class_name(list, pce->interfaces[num_interfaces], allow, ce_flags);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int module_number; } ;
typedef TYPE_1__ zend_ini_entry ;


 scalar_t__ Z_PTR_P (int *) ;

__attribute__((used)) static int zend_remove_ini_entries(zval *el, void *arg)
{
 zend_ini_entry *ini_entry = (zend_ini_entry *)Z_PTR_P(el);
 int module_number = *(int *)arg;

 return ini_entry->module_number == module_number;
}

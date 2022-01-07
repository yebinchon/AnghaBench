
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int accel_module_entry ;
 int zend_startup_module (int *) ;

int start_accel_module(void)
{
 return zend_startup_module(&accel_module_entry);
}

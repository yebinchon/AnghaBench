
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zend_func_info_startup () ;

int zend_optimizer_startup(void)
{
 return zend_func_info_startup();
}

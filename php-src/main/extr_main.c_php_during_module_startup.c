
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int module_startup ;

__attribute__((used)) static int php_during_module_startup(void)
{
 return module_startup;
}

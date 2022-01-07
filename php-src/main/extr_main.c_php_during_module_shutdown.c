
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int module_shutdown ;

__attribute__((used)) static int php_during_module_shutdown(void)
{
 return module_shutdown;
}

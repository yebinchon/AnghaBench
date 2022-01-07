
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sapi_module_struct ;


 scalar_t__ FAILURE ;
 int SUCCESS ;
 scalar_t__ php_module_startup (int *,int *,int) ;
 int phpdbg_booted ;
 int sapi_phpdbg_module_entry ;

__attribute__((used)) static inline int php_sapi_phpdbg_module_startup(sapi_module_struct *module)
{
 if (php_module_startup(module, &sapi_phpdbg_module_entry, 1) == FAILURE) {
  return FAILURE;
 }

 phpdbg_booted = 1;

 return SUCCESS;
}

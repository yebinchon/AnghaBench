
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeCaptions () ;
 int FreeOutputTimer () ;
 int FreeSceneSwitcher () ;
 int FreeScripts () ;

void obs_module_unload(void)
{



 FreeSceneSwitcher();
 FreeOutputTimer();



}

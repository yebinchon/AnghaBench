
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitCaptions () ;
 int InitOutputTimer () ;
 int InitSceneSwitcher () ;
 int InitScripts () ;

bool obs_module_load(void)
{



 InitSceneSwitcher();
 InitOutputTimer();



 return 1;
}

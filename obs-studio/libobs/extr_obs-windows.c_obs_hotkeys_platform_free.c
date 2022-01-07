
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_core_hotkeys {int * platform_context; } ;


 int bfree (int *) ;

void obs_hotkeys_platform_free(struct obs_core_hotkeys *hotkeys)
{
 bfree(hotkeys->platform_context);
 hotkeys->platform_context = ((void*)0);
}

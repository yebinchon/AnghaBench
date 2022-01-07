
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct obs_core_hotkeys {TYPE_2__* platform_context; } ;
struct TYPE_5__ {struct TYPE_5__* keysyms; int display; TYPE_1__* keycodes; } ;
typedef TYPE_2__ obs_hotkeys_platform_t ;
struct TYPE_4__ {int list; } ;


 size_t OBS_KEY_LAST_VALUE ;
 int XCloseDisplay (int ) ;
 int bfree (TYPE_2__*) ;
 int da_free (int ) ;

void obs_hotkeys_platform_free(struct obs_core_hotkeys *hotkeys)
{
 obs_hotkeys_platform_t *context = hotkeys->platform_context;

 for (size_t i = 0; i < OBS_KEY_LAST_VALUE; i++)
  da_free(context->keycodes[i].list);

 XCloseDisplay(context->display);
 bfree(context->keysyms);
 bfree(context);

 hotkeys->platform_context = ((void*)0);
}

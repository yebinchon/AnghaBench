
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; } ;
typedef TYPE_1__ obs_display_t ;



void obs_display_set_enabled(obs_display_t *display, bool enable)
{
 if (display)
  display->enabled = enable;
}

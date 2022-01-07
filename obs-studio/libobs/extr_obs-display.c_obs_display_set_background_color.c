
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int background_color; } ;
typedef TYPE_1__ obs_display_t ;



void obs_display_set_background_color(obs_display_t *display, uint32_t color)
{
 if (display)
  display->background_color = color;
}

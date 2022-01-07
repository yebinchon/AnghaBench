
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int visible; } ;
typedef TYPE_1__ obs_property_t ;



void obs_property_set_visible(obs_property_t *p, bool visible)
{
 if (p)
  p->visible = visible;
}

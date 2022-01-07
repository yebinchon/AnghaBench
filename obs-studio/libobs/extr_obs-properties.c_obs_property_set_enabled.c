
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; } ;
typedef TYPE_1__ obs_property_t ;



void obs_property_set_enabled(obs_property_t *p, bool enabled)
{
 if (p)
  p->enabled = enabled;
}

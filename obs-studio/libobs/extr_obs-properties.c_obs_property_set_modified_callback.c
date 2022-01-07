
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int modified; } ;
typedef TYPE_1__ obs_property_t ;
typedef int obs_property_modified_t ;



void obs_property_set_modified_callback(obs_property_t *p,
     obs_property_modified_t modified)
{
 if (p)
  p->modified = modified;
}

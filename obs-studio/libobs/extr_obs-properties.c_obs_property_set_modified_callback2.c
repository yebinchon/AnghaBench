
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* priv; int modified2; } ;
typedef TYPE_1__ obs_property_t ;
typedef int obs_property_modified2_t ;



void obs_property_set_modified_callback2(obs_property_t *p,
      obs_property_modified2_t modified2,
      void *priv)
{
 if (p) {
  p->modified2 = modified2;
  p->priv = priv;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * desc; } ;
typedef TYPE_1__ obs_property_t ;


 int bfree (int *) ;
 int * bstrdup (char const*) ;

void obs_property_set_description(obs_property_t *p, const char *description)
{
 if (p) {
  bfree(p->desc);
  p->desc = description && *description ? bstrdup(description)
            : ((void*)0);
 }
}

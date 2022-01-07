
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ obs_property_t ;



const char *obs_property_name(obs_property_t *p)
{
 return p ? p->name : ((void*)0);
}

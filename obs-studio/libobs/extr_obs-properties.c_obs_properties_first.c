
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_property_t ;
struct TYPE_3__ {int * first_property; } ;
typedef TYPE_1__ obs_properties_t ;



obs_property_t *obs_properties_first(obs_properties_t *props)
{
 return (props != ((void*)0)) ? props->first_property : ((void*)0);
}

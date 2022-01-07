
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* parent; } ;
typedef TYPE_2__ obs_properties_t ;
struct TYPE_5__ {TYPE_2__* parent; } ;



obs_properties_t *obs_properties_get_parent(obs_properties_t *props)
{
 return props->parent ? props->parent->parent : ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* param; } ;
typedef TYPE_1__ obs_properties_t ;



void *obs_properties_get_param(obs_properties_t *props)
{
 return props ? props->param : ((void*)0);
}

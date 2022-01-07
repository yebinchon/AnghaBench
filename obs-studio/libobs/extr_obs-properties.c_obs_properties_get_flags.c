
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ obs_properties_t ;



uint32_t obs_properties_get_flags(obs_properties_t *props)
{
 return props ? props->flags : 0;
}

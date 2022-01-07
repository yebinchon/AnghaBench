
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ obs_source_t ;


 scalar_t__ obs_source_valid (TYPE_1__ const*,char*) ;

uint32_t obs_source_get_flags(const obs_source_t *source)
{
 return obs_source_valid(source, "obs_source_get_flags") ? source->flags
        : 0;
}

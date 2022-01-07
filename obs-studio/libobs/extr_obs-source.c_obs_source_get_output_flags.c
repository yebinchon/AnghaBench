
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int output_flags; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef TYPE_2__ obs_source_t ;


 scalar_t__ obs_source_valid (TYPE_2__ const*,char*) ;

uint32_t obs_source_get_output_flags(const obs_source_t *source)
{
 return obs_source_valid(source, "obs_source_get_output_flags")
         ? source->info.output_flags
         : 0;
}

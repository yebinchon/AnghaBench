
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_1__ info; } ;
typedef TYPE_2__ obs_source_t ;


 scalar_t__ OBS_SOURCE_TYPE_FILTER ;
 int data_valid (TYPE_2__*,char*) ;
 int get_base_height (TYPE_2__*) ;
 int get_recurse_height (TYPE_2__*) ;

uint32_t obs_source_get_height(obs_source_t *source)
{
 if (!data_valid(source, "obs_source_get_height"))
  return 0;

 return (source->info.type != OBS_SOURCE_TYPE_FILTER)
         ? get_recurse_height(source)
         : get_base_height(source);
}

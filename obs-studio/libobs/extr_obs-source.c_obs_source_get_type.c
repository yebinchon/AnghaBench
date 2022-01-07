
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef TYPE_2__ obs_source_t ;
typedef enum obs_source_type { ____Placeholder_obs_source_type } obs_source_type ;


 int OBS_SOURCE_TYPE_INPUT ;
 scalar_t__ obs_source_valid (TYPE_2__ const*,char*) ;

enum obs_source_type obs_source_get_type(const obs_source_t *source)
{
 return obs_source_valid(source, "obs_source_get_type")
         ? source->info.type
         : OBS_SOURCE_TYPE_INPUT;
}

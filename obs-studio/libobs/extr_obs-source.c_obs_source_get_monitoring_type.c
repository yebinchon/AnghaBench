
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int monitoring_type; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum obs_monitoring_type { ____Placeholder_obs_monitoring_type } obs_monitoring_type ;


 int OBS_MONITORING_TYPE_NONE ;
 scalar_t__ obs_source_valid (TYPE_1__ const*,char*) ;

enum obs_monitoring_type
obs_source_get_monitoring_type(const obs_source_t *source)
{
 return obs_source_valid(source, "obs_source_get_monitoring_type")
         ? source->monitoring_type
         : OBS_MONITORING_TYPE_NONE;
}

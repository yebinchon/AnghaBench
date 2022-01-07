
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ obs_property_t ;
typedef enum obs_property_type { ____Placeholder_obs_property_type } obs_property_type ;


 int OBS_PROPERTY_INVALID ;

enum obs_property_type obs_property_get_type(obs_property_t *p)
{
 return p ? p->type : OBS_PROPERTY_INVALID;
}

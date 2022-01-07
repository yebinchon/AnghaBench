
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_context_data {int type; } ;
typedef enum obs_obj_type { ____Placeholder_obs_obj_type } obs_obj_type ;


 int OBS_OBJ_TYPE_INVALID ;

enum obs_obj_type obs_obj_get_type(void *obj)
{
 struct obs_context_data *context = obj;
 return context ? context->type : OBS_OBJ_TYPE_INVALID;
}

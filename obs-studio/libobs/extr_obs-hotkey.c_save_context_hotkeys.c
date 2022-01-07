
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct obs_context_data {TYPE_1__ hotkeys; } ;
typedef int obs_data_t ;


 int enum_context_hotkeys (struct obs_context_data*,int ,int *) ;
 int enum_save_hotkey ;
 int * obs_data_create () ;

__attribute__((used)) static inline obs_data_t *save_context_hotkeys(struct obs_context_data *context)
{
 if (!context->hotkeys.num)
  return ((void*)0);

 obs_data_t *result = obs_data_create();
 enum_context_hotkeys(context, enum_save_hotkey, result);
 return result;
}

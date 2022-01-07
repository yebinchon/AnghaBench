
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct obs_modal_ui {int target; int task; int id; } ;
struct TYPE_3__ {size_t num; struct obs_modal_ui* array; } ;
struct TYPE_4__ {TYPE_1__ modal_ui_callbacks; } ;


 TYPE_2__* obs ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static inline struct obs_modal_ui *
get_modal_ui_callback(const char *id, const char *task, const char *target)
{
 for (size_t i = 0; i < obs->modal_ui_callbacks.num; i++) {
  struct obs_modal_ui *callback =
   obs->modal_ui_callbacks.array + i;

  if (strcmp(callback->id, id) == 0 &&
      strcmp(callback->task, task) == 0 &&
      strcmp(callback->target, target) == 0)
   return callback;
 }

 return ((void*)0);
}

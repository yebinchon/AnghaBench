
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_modeless_ui {void* (* create ) (void*,void*) ;} ;


 struct obs_modeless_ui* get_modeless_ui_callback (char const*,char const*,char const*) ;
 int obs ;
 void* stub1 (void*,void*) ;

void *obs_create_ui(const char *name, const char *task, const char *target,
      void *data, void *ui_data)
{
 struct obs_modeless_ui *callback;

 if (!obs)
  return ((void*)0);

 callback = get_modeless_ui_callback(name, task, target);
 return callback ? callback->create(data, ui_data) : ((void*)0);
}

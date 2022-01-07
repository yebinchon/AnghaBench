
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int loaded; } ;
struct TYPE_3__ {int array; } ;
struct obs_python_script {TYPE_2__ base; TYPE_1__ dir; int module; } ;
typedef int obs_script_t ;


 int add_to_python_path (int ) ;
 int load_python_script (struct obs_python_script*) ;
 int lock_python () ;
 int obs_python_script_update (int *,int *) ;
 scalar_t__ python_loaded ;
 int unlock_python () ;

bool obs_python_script_load(obs_script_t *s)
{
 struct obs_python_script *data = (struct obs_python_script *)s;
 if (python_loaded && !data->base.loaded) {
  lock_python();
  if (!data->module)
   add_to_python_path(data->dir.array);
  data->base.loaded = load_python_script(data);
  unlock_python();

  if (data->base.loaded)
   obs_python_script_update(s, ((void*)0));
 }

 return data->base.loaded;
}

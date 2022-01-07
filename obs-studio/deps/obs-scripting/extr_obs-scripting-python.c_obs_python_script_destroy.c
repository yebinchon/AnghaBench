
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int settings; int desc; int file; int path; } ;
struct obs_python_script {int name; int dir; TYPE_1__ base; int module; } ;
typedef int obs_script_t ;


 int Py_XDECREF (int ) ;
 int bfree (struct obs_python_script*) ;
 int dstr_free (int *) ;
 int lock_python () ;
 int obs_data_release (int ) ;
 scalar_t__ python_loaded ;
 int unlock_python () ;

void obs_python_script_destroy(obs_script_t *s)
{
 struct obs_python_script *data = (struct obs_python_script *)s;

 if (data) {
  if (python_loaded) {
   lock_python();
   Py_XDECREF(data->module);
   unlock_python();
  }

  dstr_free(&data->base.path);
  dstr_free(&data->base.file);
  dstr_free(&data->base.desc);
  obs_data_release(data->base.settings);
  dstr_free(&data->dir);
  dstr_free(&data->name);
  bfree(data);
 }
}

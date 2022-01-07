
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct script_callback {struct script_callback* next; } ;
struct obs_python_script {struct script_callback* first_callback; int * get_properties; int * update; int * save; int * tick; struct obs_python_script* next_tick; struct obs_python_script** p_prev_next_tick; } ;
struct TYPE_3__ {int loaded; } ;
typedef TYPE_1__ obs_script_t ;


 int Py_XDECREF (int *) ;
 int lock_python () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int python_loaded ;
 int remove_script_callback (struct script_callback*) ;
 int tick_mutex ;
 int unload_python_script (struct obs_python_script*) ;
 int unlock_python () ;

void obs_python_script_unload(obs_script_t *s)
{
 struct obs_python_script *data = (struct obs_python_script *)s;

 if (!s->loaded || !python_loaded)
  return;




 if (data->p_prev_next_tick) {
  pthread_mutex_lock(&tick_mutex);

  struct obs_python_script *next = data->next_tick;
  if (next)
   next->p_prev_next_tick = data->p_prev_next_tick;
  *data->p_prev_next_tick = next;

  pthread_mutex_unlock(&tick_mutex);

  data->p_prev_next_tick = ((void*)0);
  data->next_tick = ((void*)0);
 }

 lock_python();

 Py_XDECREF(data->tick);
 Py_XDECREF(data->save);
 Py_XDECREF(data->update);
 Py_XDECREF(data->get_properties);
 data->tick = ((void*)0);
 data->save = ((void*)0);
 data->update = ((void*)0);
 data->get_properties = ((void*)0);




 struct script_callback *cb = data->first_callback;
 while (cb) {
  struct script_callback *next = cb->next;
  remove_script_callback(cb);
  cb = next;
 }




 unload_python_script(data);
 unlock_python();

 s->loaded = 0;
}

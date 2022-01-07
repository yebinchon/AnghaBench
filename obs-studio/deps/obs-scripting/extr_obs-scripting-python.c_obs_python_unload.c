
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num; int * array; } ;


 int PyGILState_Ensure () ;
 int Py_Finalize () ;
 scalar_t__ Py_IsInitialized () ;
 int Py_XDECREF (int ) ;
 int bfree (int ) ;
 int cur_py_log_chunk ;
 int da_free (TYPE_1__) ;
 int dstr_free (int *) ;
 int obs_remove_tick_callback (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int py_obspython ;
 scalar_t__ python_loaded ;
 int python_loaded_at_all ;
 TYPE_1__ python_paths ;
 int python_tick ;
 int tick_mutex ;
 int timer_mutex ;

void obs_python_unload(void)
{
 if (!python_loaded_at_all)
  return;

 if (python_loaded && Py_IsInitialized()) {
  PyGILState_Ensure();

  Py_XDECREF(py_obspython);
  Py_Finalize();
 }



 obs_remove_tick_callback(python_tick, ((void*)0));

 for (size_t i = 0; i < python_paths.num; i++)
  bfree(python_paths.array[i]);
 da_free(python_paths);

 pthread_mutex_destroy(&tick_mutex);
 pthread_mutex_destroy(&timer_mutex);
 dstr_free(&cur_py_log_chunk);

 python_loaded_at_all = 0;
}

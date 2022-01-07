
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct python_obs_timer {unsigned long long interval; int last_ts; } ;
struct python_obs_callback {int dummy; } ;
struct obs_python_script {int dummy; } ;
typedef int PyObject ;


 int UNUSED_PARAMETER (int *) ;
 struct python_obs_callback* add_python_obs_callback_extra (struct obs_python_script*,int *,int) ;
 struct obs_python_script* cur_python_script ;
 int defer_call_post (int ,struct python_obs_callback*) ;
 int defer_timer_init ;
 int obs_get_video_frame_time () ;
 int parse_args (int *,char*,int **,int*) ;
 int * python_none () ;
 struct python_obs_timer* python_obs_callback_extra_data (struct python_obs_callback*) ;

__attribute__((used)) static PyObject *timer_add(PyObject *self, PyObject *args)
{
 struct obs_python_script *script = cur_python_script;
 PyObject *py_cb;
 int ms;

 UNUSED_PARAMETER(self);

 if (!parse_args(args, "Oi", &py_cb, &ms))
  return python_none();

 struct python_obs_callback *cb = add_python_obs_callback_extra(
  script, py_cb, sizeof(struct python_obs_timer));
 struct python_obs_timer *timer = python_obs_callback_extra_data(cb);

 timer->interval = (uint64_t)ms * 1000000ULL;
 timer->last_ts = obs_get_video_frame_time();

 defer_call_post(defer_timer_init, cb);
 return python_none();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int reconnect_retry_cur_sec; int reconnect_thread_active; int reconnecting; int reconnect_thread; int reconnect_stop_event; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ ETIMEDOUT ;
 int obs_output_actual_start (struct obs_output*) ;
 int os_atomic_set_bool (int *,int) ;
 scalar_t__ os_event_timedwait (int ,unsigned long) ;
 scalar_t__ os_event_try (int ) ;
 int pthread_detach (int ) ;

__attribute__((used)) static void *reconnect_thread(void *param)
{
 struct obs_output *output = param;
 unsigned long ms = output->reconnect_retry_cur_sec * 1000;

 output->reconnect_thread_active = 1;

 if (os_event_timedwait(output->reconnect_stop_event, ms) == ETIMEDOUT)
  obs_output_actual_start(output);

 if (os_event_try(output->reconnect_stop_event) == EAGAIN)
  pthread_detach(output->reconnect_thread);
 else
  os_atomic_set_bool(&output->reconnecting, 0);

 output->reconnect_thread_active = 0;
 return ((void*)0);
}

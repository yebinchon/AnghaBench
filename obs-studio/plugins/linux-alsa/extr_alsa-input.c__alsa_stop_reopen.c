
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alsa_data {int abort_event; scalar_t__ reopen_thread; int reopen; } ;


 scalar_t__ os_atomic_load_bool (int *) ;
 int os_event_reset (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (scalar_t__,int *) ;

void _alsa_stop_reopen(struct alsa_data *data)
{
 if (os_atomic_load_bool(&data->reopen))
  os_event_signal(data->abort_event);

 if (data->reopen_thread) {
  pthread_join(data->reopen_thread, ((void*)0));
  data->reopen_thread = 0;
 }

 os_event_reset(data->abort_event);
}

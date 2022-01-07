
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {scalar_t__ unit; int exit_event; int reconnect_thread; scalar_t__ reconnecting; } ;


 int AudioComponentInstanceDispose (scalar_t__) ;
 int coreaudio_uninit (struct coreaudio_data*) ;
 int os_event_reset (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static void coreaudio_shutdown(struct coreaudio_data *ca)
{
 if (ca->reconnecting) {
  os_event_signal(ca->exit_event);
  pthread_join(ca->reconnect_thread, ((void*)0));
  os_event_reset(ca->exit_event);
 }

 coreaudio_uninit(ca);

 if (ca->unit)
  AudioComponentInstanceDispose(ca->unit);
}

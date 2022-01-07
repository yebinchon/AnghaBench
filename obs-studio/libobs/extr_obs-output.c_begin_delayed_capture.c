
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int reconnecting; int interleaved_mutex; int delay_capturing; } ;
typedef TYPE_1__ obs_output_t ;


 scalar_t__ delay_capturing (TYPE_1__*) ;
 int os_atomic_set_bool (int *,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ reconnecting (TYPE_1__*) ;
 int reset_packet_data (TYPE_1__*) ;
 int signal_reconnect_success (TYPE_1__*) ;
 int signal_start (TYPE_1__*) ;

__attribute__((used)) static bool begin_delayed_capture(obs_output_t *output)
{
 if (delay_capturing(output))
  return 0;

 pthread_mutex_lock(&output->interleaved_mutex);
 reset_packet_data(output);
 os_atomic_set_bool(&output->delay_capturing, 1);
 pthread_mutex_unlock(&output->interleaved_mutex);

 if (reconnecting(output)) {
  signal_reconnect_success(output);
  os_atomic_set_bool(&output->reconnecting, 0);
 } else {
  signal_start(output);
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int uint64_t ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_14__ {int (* stop ) (scalar_t__,int ) ;} ;
struct TYPE_16__ {TYPE_12__* caption_tail; TYPE_12__* caption_head; int stopping_event; void* stop_code; TYPE_2__ context; TYPE_1__ info; int delay_capturing; int delay_active; int reconnect_thread; scalar_t__ reconnect_thread_active; int reconnect_stop_event; } ;
typedef TYPE_3__ obs_output_t ;
struct TYPE_13__ {struct TYPE_13__* next; } ;


 void* OBS_OUTPUT_SUCCESS ;
 int bfree (TYPE_12__*) ;
 scalar_t__ delay_active (TYPE_3__*) ;
 int delay_capturing (TYPE_3__*) ;
 int obs_output_end_data_capture (TYPE_3__*) ;
 int obs_output_pause (TYPE_3__*,int) ;
 int os_atomic_set_bool (int *,int) ;
 int os_event_reset (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,int *) ;
 scalar_t__ reconnecting (TYPE_3__*) ;
 int signal_stop (TYPE_3__*) ;
 scalar_t__ stopping (TYPE_3__*) ;
 int stub1 (scalar_t__,int ) ;

void obs_output_actual_stop(obs_output_t *output, bool force, uint64_t ts)
{
 bool call_stop = 1;
 bool was_reconnecting = 0;

 if (stopping(output) && !force)
  return;

 obs_output_pause(output, 0);

 os_event_reset(output->stopping_event);

 was_reconnecting = reconnecting(output) && !delay_active(output);
 if (reconnecting(output)) {
  os_event_signal(output->reconnect_stop_event);
  if (output->reconnect_thread_active)
   pthread_join(output->reconnect_thread, ((void*)0));
 }

 if (force) {
  if (delay_active(output)) {
   call_stop = delay_capturing(output);
   os_atomic_set_bool(&output->delay_active, 0);
   os_atomic_set_bool(&output->delay_capturing, 0);
   output->stop_code = OBS_OUTPUT_SUCCESS;
   obs_output_end_data_capture(output);
   os_event_signal(output->stopping_event);
  } else {
   call_stop = 1;
  }
 } else {
  call_stop = 1;
 }

 if (output->context.data && call_stop) {
  output->info.stop(output->context.data, ts);

 } else if (was_reconnecting) {
  output->stop_code = OBS_OUTPUT_SUCCESS;
  signal_stop(output);
  os_event_signal(output->stopping_event);
 }

 while (output->caption_head) {
  output->caption_tail = output->caption_head->next;
  bfree(output->caption_head);
  output->caption_head = output->caption_tail;
 }
}

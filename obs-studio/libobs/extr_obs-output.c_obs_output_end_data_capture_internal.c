
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int name; } ;
struct TYPE_15__ {void* stop_code; TYPE_1__ context; int end_data_capture_thread; int end_data_capture_thread_active; scalar_t__ video; int data_active; int stopping_event; int delay_active; int delay_restart_refs; int delay_capturing; } ;
typedef TYPE_2__ obs_output_t ;


 int LOG_WARNING ;
 void* OBS_OUTPUT_SUCCESS ;
 int active (TYPE_2__*) ;
 int blog (int ,char*,int ) ;
 int data_active (TYPE_2__*) ;
 scalar_t__ data_capture_ending (TYPE_2__*) ;
 scalar_t__ delay_active (TYPE_2__*) ;
 int end_data_capture_thread (TYPE_2__*) ;
 int log_frame_info (TYPE_2__*) ;
 int obs_output_valid (TYPE_2__*,char*) ;
 int os_atomic_load_long (int *) ;
 int os_atomic_set_bool (int *,int) ;
 int os_event_signal (int ) ;
 int pthread_create (int *,int *,int (*) (TYPE_2__*),TYPE_2__*) ;
 int pthread_join (int ,int *) ;
 int signal_stop (TYPE_2__*) ;

__attribute__((used)) static void obs_output_end_data_capture_internal(obs_output_t *output,
       bool signal)
{
 int ret;

 if (!obs_output_valid(output, "obs_output_end_data_capture"))
  return;

 if (!active(output) || !data_active(output)) {
  if (signal) {
   signal_stop(output);
   output->stop_code = OBS_OUTPUT_SUCCESS;
   os_event_signal(output->stopping_event);
  }
  return;
 }

 if (delay_active(output)) {
  os_atomic_set_bool(&output->delay_capturing, 0);

  if (!os_atomic_load_long(&output->delay_restart_refs)) {
   os_atomic_set_bool(&output->delay_active, 0);
  } else {
   os_event_signal(output->stopping_event);
   return;
  }
 }

 os_atomic_set_bool(&output->data_active, 0);

 if (output->video)
  log_frame_info(output);

 if (data_capture_ending(output))
  pthread_join(output->end_data_capture_thread, ((void*)0));

 os_atomic_set_bool(&output->end_data_capture_thread_active, 1);
 ret = pthread_create(&output->end_data_capture_thread, ((void*)0),
        end_data_capture_thread, output);
 if (ret != 0) {
  blog(LOG_WARNING,
       "Failed to create end_data_capture_thread "
       "for output '%s'!",
       output->context.name);
  end_data_capture_thread(output);
 }

 if (signal) {
  signal_stop(output);
  output->stop_code = OBS_OUTPUT_SUCCESS;
 }
}

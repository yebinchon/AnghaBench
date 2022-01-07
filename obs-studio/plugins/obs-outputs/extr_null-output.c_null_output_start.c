
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct null_output {int output; int stop_thread; scalar_t__ stop_thread_active; } ;


 int obs_output_begin_data_capture (int ,int ) ;
 int obs_output_can_begin_data_capture (int ,int ) ;
 int obs_output_initialize_encoders (int ,int ) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static bool null_output_start(void *data)
{
 struct null_output *context = data;

 if (!obs_output_can_begin_data_capture(context->output, 0))
  return 0;
 if (!obs_output_initialize_encoders(context->output, 0))
  return 0;

 if (context->stop_thread_active)
  pthread_join(context->stop_thread, ((void*)0));

 obs_output_begin_data_capture(context->output, 0);
 return 1;
}

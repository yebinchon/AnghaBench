
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct null_output {int stop_thread_active; int output; } ;


 int obs_output_end_data_capture (int ) ;

__attribute__((used)) static void *stop_thread(void *data)
{
 struct null_output *context = data;
 obs_output_end_data_capture(context->output);
 context->stop_thread_active = 0;
 return ((void*)0);
}

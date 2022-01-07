
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct null_output {int stop_thread_active; int stop_thread; } ;


 int UNUSED_PARAMETER (int ) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 int stop_thread ;

__attribute__((used)) static void null_output_stop(void *data, uint64_t ts)
{
 struct null_output *context = data;
 UNUSED_PARAMETER(ts);

 context->stop_thread_active = pthread_create(&context->stop_thread,
           ((void*)0), stop_thread,
           data) == 0;
}

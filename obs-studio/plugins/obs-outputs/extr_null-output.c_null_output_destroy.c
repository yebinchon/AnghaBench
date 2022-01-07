
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct null_output {int stop_thread; scalar_t__ stop_thread_active; } ;


 int bfree (struct null_output*) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static void null_output_destroy(void *data)
{
 struct null_output *context = data;
 if (context->stop_thread_active)
  pthread_join(context->stop_thread, ((void*)0));
 bfree(context);
}

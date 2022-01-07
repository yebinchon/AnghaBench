
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct random_tex {int stop_signal; int thread; scalar_t__ initialized; } ;


 int bfree (struct random_tex*) ;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static void random_destroy(void *data)
{
 struct random_tex *rt = data;

 if (rt) {
  if (rt->initialized) {
   os_event_signal(rt->stop_signal);
   pthread_join(rt->thread, ((void*)0));
  }

  os_event_destroy(rt->stop_signal);
  bfree(rt);
 }
}

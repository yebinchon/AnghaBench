
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sinewave_data {int event; int thread; scalar_t__ initialized_thread; } ;


 int bfree (struct sinewave_data*) ;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,void**) ;

__attribute__((used)) static void sinewave_destroy(void *data)
{
 struct sinewave_data *swd = data;

 if (swd) {
  if (swd->initialized_thread) {
   void *ret;
   os_event_signal(swd->event);
   pthread_join(swd->thread, &ret);
  }

  os_event_destroy(swd->event);
  bfree(swd);
 }
}

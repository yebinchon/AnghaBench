
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_pair_aud {int event; int thread; scalar_t__ initialized_thread; } ;


 int bfree (struct sync_pair_aud*) ;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,void**) ;

__attribute__((used)) static void sync_pair_aud_destroy(void *data)
{
 struct sync_pair_aud *spa = data;

 if (spa) {
  if (spa->initialized_thread) {
   void *ret;
   os_event_signal(spa->event);
   pthread_join(spa->thread, &ret);
  }

  os_event_destroy(spa->event);
  bfree(spa);
 }
}

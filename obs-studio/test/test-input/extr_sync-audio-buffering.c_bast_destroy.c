
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffering_async_sync_test {int stop_signal; int thread; scalar_t__ initialized; } ;


 int bfree (struct buffering_async_sync_test*) ;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static void bast_destroy(void *data)
{
 struct buffering_async_sync_test *bast = data;

 if (bast->initialized) {
  os_event_signal(bast->stop_signal);
  pthread_join(bast->thread, ((void*)0));
 }

 os_event_destroy(bast->stop_signal);
 bfree(bast);
}

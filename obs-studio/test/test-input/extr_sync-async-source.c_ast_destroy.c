
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_sync_test {int stop_signal; int thread; scalar_t__ initialized; } ;


 int bfree (struct async_sync_test*) ;
 int os_event_destroy (int ) ;
 int os_event_signal (int ) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static void ast_destroy(void *data)
{
 struct async_sync_test *ast = data;

 if (ast->initialized) {
  os_event_signal(ast->stop_signal);
  pthread_join(ast->thread, ((void*)0));
 }

 os_event_destroy(ast->stop_signal);
 bfree(ast);
}

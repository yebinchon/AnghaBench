
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct signal_info {struct signal_info* next; } ;
struct TYPE_4__ {int mutex; int global_callbacks_mutex; int global_callbacks; struct signal_info* first; } ;
typedef TYPE_1__ signal_handler_t ;


 int bfree (TYPE_1__*) ;
 int da_free (int ) ;
 int pthread_mutex_destroy (int *) ;
 int signal_info_destroy (struct signal_info*) ;

__attribute__((used)) static void signal_handler_actually_destroy(signal_handler_t *handler)
{
 struct signal_info *sig = handler->first;
 while (sig != ((void*)0)) {
  struct signal_info *next = sig->next;
  signal_info_destroy(sig);
  sig = next;
 }

 da_free(handler->global_callbacks);
 pthread_mutex_destroy(&handler->global_callbacks_mutex);
 pthread_mutex_destroy(&handler->mutex);
 bfree(handler);
}

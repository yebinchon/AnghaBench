
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_handler {int refs; int mutex; int global_callbacks_mutex; int * first; } ;
typedef struct signal_handler signal_handler_t ;
typedef int pthread_mutexattr_t ;


 int LOG_ERROR ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int bfree (struct signal_handler*) ;
 int blog (int ,char*) ;
 struct signal_handler* bzalloc (int) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

signal_handler_t *signal_handler_create(void)
{
 struct signal_handler *handler = bzalloc(sizeof(struct signal_handler));
 handler->first = ((void*)0);
 handler->refs = 1;

 pthread_mutexattr_t attr;
 if (pthread_mutexattr_init(&attr) != 0)
  return ((void*)0);
 if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
  return ((void*)0);

 if (pthread_mutex_init(&handler->mutex, ((void*)0)) != 0) {
  blog(LOG_ERROR, "Couldn't create signal handler mutex!");
  bfree(handler);
  return ((void*)0);
 }
 if (pthread_mutex_init(&handler->global_callbacks_mutex, &attr) != 0) {
  blog(LOG_ERROR, "Couldn't create signal handler global "
    "callbacks mutex!");
  pthread_mutex_destroy(&handler->mutex);
  bfree(handler);
  return ((void*)0);
 }

 return handler;
}

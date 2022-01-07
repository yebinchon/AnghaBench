
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alsa_data {int reopen; int abort_event; } ;


 scalar_t__ ETIMEDOUT ;
 int LOG_DEBUG ;
 int REOPEN_TIMEOUT ;
 scalar_t__ _alsa_open (struct alsa_data*) ;
 int blog (int ,char*) ;
 int os_atomic_set_bool (int *,int) ;
 scalar_t__ os_event_timedwait (int ,unsigned long) ;
 int pthread_exit (int *) ;

void *_alsa_reopen(void *attr)
{
 struct alsa_data *data = attr;
 unsigned long timeout = REOPEN_TIMEOUT;

 blog(LOG_DEBUG, "Reopen thread started.");

 os_atomic_set_bool(&data->reopen, 1);

 while (os_event_timedwait(data->abort_event, timeout) == ETIMEDOUT) {
  if (_alsa_open(data))
   break;

  if (timeout < (REOPEN_TIMEOUT * 5))
   timeout += REOPEN_TIMEOUT;
 }

 os_atomic_set_bool(&data->reopen, 0);

 blog(LOG_DEBUG, "Reopen thread is about to exit.");

 pthread_exit(((void*)0));
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alsa_data {int device; int reopen_thread; int reopen; } ;
typedef int pthread_attr_t ;


 int LOG_ERROR ;
 int PTHREAD_CREATE_JOINABLE ;
 int _alsa_reopen ;
 int blog (int ,char*,int ) ;
 scalar_t__ os_atomic_load_bool (int *) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,int ,struct alsa_data*) ;

void _alsa_start_reopen(struct alsa_data *data)
{
 pthread_attr_t attr;
 int err;

 if (os_atomic_load_bool(&data->reopen))
  return;

 pthread_attr_init(&attr);
 pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

 err = pthread_create(&data->reopen_thread, &attr, _alsa_reopen, data);
 if (err) {
  blog(LOG_ERROR,
       "Failed to create reopen thread for device '%s'.",
       data->device);
 }

 pthread_attr_destroy(&attr);
}

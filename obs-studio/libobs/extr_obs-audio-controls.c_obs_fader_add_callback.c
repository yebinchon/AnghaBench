
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fader_cb {void* member_1; int member_0; } ;
struct TYPE_4__ {int callback_mutex; int callbacks; } ;
typedef TYPE_1__ obs_fader_t ;
typedef int obs_fader_changed_t ;


 int da_push_back (int ,struct fader_cb*) ;
 int obs_ptr_valid (TYPE_1__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_fader_add_callback(obs_fader_t *fader, obs_fader_changed_t callback,
       void *param)
{
 struct fader_cb cb = {callback, param};

 if (!obs_ptr_valid(fader, "obs_fader_add_callback"))
  return;

 pthread_mutex_lock(&fader->callback_mutex);
 da_push_back(fader->callbacks, &cb);
 pthread_mutex_unlock(&fader->callback_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct fader_cb* array; } ;
struct obs_fader {int callback_mutex; TYPE_1__ callbacks; } ;
struct fader_cb {int param; int (* callback ) (int ,float const) ;} ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ,float const) ;

__attribute__((used)) static void signal_volume_changed(struct obs_fader *fader, const float db)
{
 pthread_mutex_lock(&fader->callback_mutex);
 for (size_t i = fader->callbacks.num; i > 0; i--) {
  struct fader_cb cb = fader->callbacks.array[i - 1];
  cb.callback(cb.param, db);
 }
 pthread_mutex_unlock(&fader->callback_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int cur_db; } ;
typedef TYPE_1__ obs_fader_t ;


 float db_to_mul (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

float obs_fader_get_mul(obs_fader_t *fader)
{
 if (!fader)
  return 0.0f;

 pthread_mutex_lock(&fader->mutex);
 const float mul = db_to_mul(fader->cur_db);
 pthread_mutex_unlock(&fader->mutex);

 return mul;
}

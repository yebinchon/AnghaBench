
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * data; } ;
struct TYPE_5__ {int (* destroy ) (int *) ;} ;
struct TYPE_7__ {int first_received; int init_mutex; scalar_t__ start_ts; scalar_t__ offset_usec; int * paired_encoder; TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_encoder_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int *) ;

void obs_encoder_shutdown(obs_encoder_t *encoder)
{
 pthread_mutex_lock(&encoder->init_mutex);
 if (encoder->context.data) {
  encoder->info.destroy(encoder->context.data);
  encoder->context.data = ((void*)0);
  encoder->paired_encoder = ((void*)0);
  encoder->first_received = 0;
  encoder->offset_usec = 0;
  encoder->start_ts = 0;
 }
 pthread_mutex_unlock(&encoder->init_mutex);
}

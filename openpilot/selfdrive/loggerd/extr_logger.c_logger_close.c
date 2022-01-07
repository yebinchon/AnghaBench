
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; scalar_t__ cur_handle; int init_data; } ;
typedef TYPE_1__ LoggerState ;


 int free (int ) ;
 int lh_close (scalar_t__) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void logger_close(LoggerState *s) {
  pthread_mutex_lock(&s->lock);
  free(s->init_data);
  if (s->cur_handle) {
    lh_close(s->cur_handle);
  }
  pthread_mutex_unlock(&s->lock);
}

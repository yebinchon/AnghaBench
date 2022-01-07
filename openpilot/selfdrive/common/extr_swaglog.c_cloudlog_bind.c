
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int cloudlog_bind_locked (char const*,char const*) ;
 int cloudlog_init () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__ s ;

void cloudlog_bind(const char* k, const char* v) {
  pthread_mutex_lock(&s.lock);
  cloudlog_init();
  cloudlog_bind_locked(k, v);
  pthread_mutex_unlock(&s.lock);
}

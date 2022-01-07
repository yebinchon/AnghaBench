
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int fd; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef TYPE_1__ stream_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int smb_lock ;
 int smbc_close (int ) ;

__attribute__((used)) static void close_f(stream_t *s){
  struct priv *p = s->priv;
  pthread_mutex_lock(&smb_lock);
  smbc_close(p->fd);
  pthread_mutex_unlock(&smb_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int fd; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ off_t ;
typedef int int64_t ;


 int SEEK_SET ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int smb_lock ;
 scalar_t__ smbc_lseek (int ,int ,int ) ;

__attribute__((used)) static int seek(stream_t *s,int64_t newpos) {
  struct priv *p = s->priv;
  pthread_mutex_lock(&smb_lock);
  off_t size = smbc_lseek(p->fd,newpos,SEEK_SET);
  pthread_mutex_unlock(&smb_lock);
  if(size<0) {
    return 0;
  }
  return 1;
}

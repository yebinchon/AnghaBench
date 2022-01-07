
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsync_sibling {int mutex; scalar_t__ num_waits; int cond; int started; int prog; scalar_t__ diverge; int system_tid; } ;


 int PR_GET_NO_NEW_PRIVS ;
 int PR_SET_SECCOMP ;
 int SECCOMP_MODE_FILTER ;
 scalar_t__ SIBLING_EXIT_FAILURE ;
 scalar_t__ SIBLING_EXIT_NEWPRIVS ;
 scalar_t__ SIBLING_EXIT_UNKILLED ;
 int __NR_gettid ;
 long prctl (int ,int ,int ,int ,int ) ;
 int pthread_cond_wait (int ,int ) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 int read (int ,int *,int ) ;
 int sem_post (int ) ;
 int syscall (int ) ;

void *tsync_sibling(void *data)
{
 long ret = 0;
 struct tsync_sibling *me = data;

 me->system_tid = syscall(__NR_gettid);

 pthread_mutex_lock(me->mutex);
 if (me->diverge) {

  ret = prctl(PR_SET_SECCOMP, SECCOMP_MODE_FILTER,
    me->prog, 0, 0);
 }
 sem_post(me->started);

 if (ret) {
  pthread_mutex_unlock(me->mutex);
  return (void *)SIBLING_EXIT_FAILURE;
 }
 do {
  pthread_cond_wait(me->cond, me->mutex);
  me->num_waits = me->num_waits - 1;
 } while (me->num_waits);
 pthread_mutex_unlock(me->mutex);

 ret = prctl(PR_GET_NO_NEW_PRIVS, 0, 0, 0, 0);
 if (!ret)
  return (void *)SIBLING_EXIT_NEWPRIVS;
 read(0, ((void*)0), 0);
 return (void *)SIBLING_EXIT_UNKILLED;
}

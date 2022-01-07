
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pthread_rwlock_t ;
struct TYPE_5__ {scalar_t__ nMagic; scalar_t__ nExclusiveAccessCount; int nSharedAccessCount; int mtxSharedAccessCompleted; int cndSharedAccessCompleted; int nCompletedSharedAccessCount; int mtxExclusiveAccess; } ;


 int EBUSY ;
 int EINVAL ;
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ;
 scalar_t__ PTW32_RWLOCK_MAGIC ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,void*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ptw32_rwlock_cancelwrwait ;
 int ptw32_rwlock_check_need_init (TYPE_1__**) ;

int
pthread_rwlock_wrlock (pthread_rwlock_t * rwlock)
{
  int result;
  pthread_rwlock_t rwl;

  if (rwlock == ((void*)0) || *rwlock == ((void*)0))
    {
      return EINVAL;
    }







  if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
    {
      result = ptw32_rwlock_check_need_init (rwlock);

      if (result != 0 && result != EBUSY)
 {
   return result;
 }
    }

  rwl = *rwlock;

  if (rwl->nMagic != PTW32_RWLOCK_MAGIC)
    {
      return EINVAL;
    }

  if ((result = pthread_mutex_lock (&(rwl->mtxExclusiveAccess))) != 0)
    {
      return result;
    }

  if ((result = pthread_mutex_lock (&(rwl->mtxSharedAccessCompleted))) != 0)
    {
      (void) pthread_mutex_unlock (&(rwl->mtxExclusiveAccess));
      return result;
    }

  if (rwl->nExclusiveAccessCount == 0)
    {
      if (rwl->nCompletedSharedAccessCount > 0)
 {
   rwl->nSharedAccessCount -= rwl->nCompletedSharedAccessCount;
   rwl->nCompletedSharedAccessCount = 0;
 }

      if (rwl->nSharedAccessCount > 0)
 {
   rwl->nCompletedSharedAccessCount = -rwl->nSharedAccessCount;
   pthread_cleanup_push (ptw32_rwlock_cancelwrwait, (void *) rwl);

   do
     {
       result = pthread_cond_wait (&(rwl->cndSharedAccessCompleted),
       &(rwl->mtxSharedAccessCompleted));
     }
   while (result == 0 && rwl->nCompletedSharedAccessCount < 0);

   pthread_cleanup_pop ((result != 0) ? 1 : 0);




   if (result == 0)
     {
       rwl->nSharedAccessCount = 0;
     }
 }
    }

  if (result == 0)
    {
      rwl->nExclusiveAccessCount++;
    }

  return result;
}

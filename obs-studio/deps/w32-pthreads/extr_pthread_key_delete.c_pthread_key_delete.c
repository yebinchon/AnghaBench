
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int threadLock; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
typedef TYPE_2__* pthread_key_t ;
struct TYPE_9__ {TYPE_1__* thread; } ;
typedef TYPE_3__ ThreadKeyAssoc ;
struct TYPE_8__ {int keyLock; int * destructor; int key; int * threads; } ;


 int TlsFree (int ) ;
 int free (TYPE_2__*) ;
 int memset (char*,int ,int) ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_tkAssocDestroy (TYPE_3__*) ;

int
pthread_key_delete (pthread_key_t key)
{
  ptw32_mcs_local_node_t keyLock;
  int result = 0;

  if (key != ((void*)0))
    {
      if (key->threads != ((void*)0) && key->destructor != ((void*)0))
 {
   ThreadKeyAssoc *assoc;
   ptw32_mcs_lock_acquire (&(key->keyLock), &keyLock);
   while ((assoc = (ThreadKeyAssoc *) key->threads) != ((void*)0))
     {
              ptw32_mcs_local_node_t threadLock;
       ptw32_thread_t * thread = assoc->thread;

       if (assoc == ((void*)0))
  {

    break;
  }

       ptw32_mcs_lock_acquire (&(thread->threadLock), &threadLock);






       ptw32_tkAssocDestroy (assoc);
       ptw32_mcs_lock_release (&threadLock);
       ptw32_mcs_lock_release (&keyLock);
     }
 }

      TlsFree (key->key);
      if (key->destructor != ((void*)0))
 {

   ptw32_mcs_lock_acquire (&(key->keyLock), &keyLock);
   ptw32_mcs_lock_release (&keyLock);
 }




      free (key);
    }

  return (result);
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  threadLock; } ;
typedef  TYPE_1__ ptw32_thread_t ;
typedef  int /*<<< orphan*/  ptw32_mcs_local_node_t ;
typedef  TYPE_2__* pthread_key_t ;
struct TYPE_9__ {TYPE_1__* thread; } ;
typedef  TYPE_3__ ThreadKeyAssoc ;
struct TYPE_8__ {int /*<<< orphan*/  keyLock; int /*<<< orphan*/ * destructor; int /*<<< orphan*/  key; int /*<<< orphan*/ * threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

int
FUNC6 (pthread_key_t key)
     /*
      * ------------------------------------------------------
      * DOCPUBLIC
      *      This function deletes a thread-specific data key. This
      *      does not change the value of the thread specific data key
      *      for any thread and does not run the key's destructor
      *      in any thread so it should be used with caution.
      *
      * PARAMETERS
      *      key
      *              pointer to an instance of pthread_key_t
      *
      *
      * DESCRIPTION
      *      This function deletes a thread-specific data key. This
      *      does not change the value of the thread specific data key
      *      for any thread and does not run the key's destructor
      *      in any thread so it should be used with caution.
      *
      * RESULTS
      *              0               successfully deleted the key,
      *              EINVAL          key is invalid,
      *
      * ------------------------------------------------------
      */
{
  ptw32_mcs_local_node_t keyLock;
  int result = 0;

  if (key != NULL)
    {
      if (key->threads != NULL && key->destructor != NULL)
	{
	  ThreadKeyAssoc *assoc;
	  FUNC3 (&(key->keyLock), &keyLock);
	  /*
	   * Run through all Thread<-->Key associations
	   * for this key.
	   *
	   * While we hold at least one of the locks guarding
	   * the assoc, we know that the assoc pointed to by
	   * key->threads is valid.
	   */
	  while ((assoc = (ThreadKeyAssoc *) key->threads) != NULL)
	    {
              ptw32_mcs_local_node_t threadLock;
	      ptw32_thread_t * thread = assoc->thread;

	      if (assoc == NULL)
		{
		  /* Finished */
		  break;
		}

	      FUNC3 (&(thread->threadLock), &threadLock);
	      /*
	       * Since we are starting at the head of the key's threads
	       * chain, this will also point key->threads at the next assoc.
	       * While we hold key->keyLock, no other thread can insert
	       * a new assoc via pthread_setspecific.
	       */
	      FUNC5 (assoc);
	      FUNC4 (&threadLock);
	      FUNC4 (&keyLock);
	    }
	}

      FUNC0 (key->key);
      if (key->destructor != NULL)
	{
	  /* A thread could be holding the keyLock */
	  FUNC3 (&(key->keyLock), &keyLock);
	  FUNC4 (&keyLock);
	}

#if defined( _DEBUG )
      memset ((char *) key, 0, sizeof (*key));
#endif
      FUNC1 (key);
    }

  return (result);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_key_t ;
struct TYPE_3__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void *
FUNC5 (pthread_key_t key)
     /*
      * ------------------------------------------------------
      * DOCPUBLIC
      *      This function returns the current value of key in the
      *      calling thread. If no value has been set for 'key' in 
      *      the thread, NULL is returned.
      *
      * PARAMETERS
      *      key
      *              an instance of pthread_key_t
      *
      *
      * DESCRIPTION
      *      This function returns the current value of key in the
      *      calling thread. If no value has been set for 'key' in 
      *      the thread, NULL is returned.
      *
      * RESULTS
      *              key value or NULL on failure
      *
      * ------------------------------------------------------
      */
{
  void * ptr;

  if (key == NULL)
    {
      ptr = NULL;
    }
  else
    {
      int lasterror = FUNC0 ();
#if defined(RETAIN_WSALASTERROR)
      int lastWSAerror = WSAGetLastError ();
#endif
      ptr = FUNC2 (key->key);

      FUNC1 (lasterror);
#if defined(RETAIN_WSALASTERROR)
      WSASetLastError (lastWSAerror);
#endif
    }

  return ptr;
}
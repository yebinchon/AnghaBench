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
struct TYPE_3__ {size_t threadnum; int started; } ;
typedef  TYPE_1__ bag_t ;

/* Variables and functions */
 int PTHREAD_CANCEL_ASYNCHRONOUS ; 
 int PTHREAD_CANCEL_DEFERRED ; 
 int PTHREAD_CANCEL_DISABLE ; 
 int PTHREAD_CANCEL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int*) ; 
 scalar_t__ FUNC2 (int,int*) ; 
 TYPE_1__* threadbag ; 

void *
FUNC3(void * arg)
{
  bag_t * bag = (bag_t *) arg;

  FUNC0(bag == &threadbag[bag->threadnum]);
  FUNC0(bag->started == 0);
  bag->started = 1;

  /* ... */
  {
    int oldstate;
    int oldtype;

    FUNC0(FUNC1(PTHREAD_CANCEL_DISABLE, &oldstate) == 0);
    FUNC0(oldstate == PTHREAD_CANCEL_ENABLE); /* Check default */
    FUNC0(FUNC1(PTHREAD_CANCEL_ENABLE, NULL) == 0);
    FUNC0(FUNC1(PTHREAD_CANCEL_DISABLE, NULL) == 0);
    FUNC0(FUNC1(oldstate, &oldstate) == 0);
    FUNC0(oldstate == PTHREAD_CANCEL_DISABLE); /* Check setting */

    FUNC0(FUNC2(PTHREAD_CANCEL_ASYNCHRONOUS, &oldtype) == 0);
    FUNC0(oldtype == PTHREAD_CANCEL_DEFERRED); /* Check default */
    FUNC0(FUNC2(PTHREAD_CANCEL_DEFERRED, NULL) == 0);
    FUNC0(FUNC2(PTHREAD_CANCEL_ASYNCHRONOUS, NULL) == 0);
    FUNC0(FUNC2(oldtype, &oldtype) == 0);
    FUNC0(oldtype == PTHREAD_CANCEL_ASYNCHRONOUS); /* Check setting */
  }

  return 0;
}
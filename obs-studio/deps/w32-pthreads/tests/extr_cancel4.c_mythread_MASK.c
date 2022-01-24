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
struct TYPE_3__ {size_t threadnum; int started; int count; } ;
typedef  TYPE_1__ bag_t ;

/* Variables and functions */
 scalar_t__ PTHREAD_CANCELED ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_DEFERRED ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* threadbag ; 

void *
FUNC4(void * arg)
{
  void* result = (void*)((int)(size_t)PTHREAD_CANCELED + 1);
  bag_t * bag = (bag_t *) arg;

  FUNC1(bag == &threadbag[bag->threadnum]);
  FUNC1(bag->started == 0);
  bag->started = 1;

  /* Set to known state and type */

  FUNC1(FUNC2(PTHREAD_CANCEL_ENABLE, NULL) == 0);

  FUNC1(FUNC3(PTHREAD_CANCEL_DEFERRED, NULL) == 0);

  /*
   * We wait up to 2 seconds, waking every 0.1 seconds,
   * for a cancelation to be applied to us.
   */
  for (bag->count = 0; bag->count < 20; bag->count++)
    FUNC0(100);

  return result;
}
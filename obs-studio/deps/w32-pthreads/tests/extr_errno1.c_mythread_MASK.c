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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stop_here ; 
 TYPE_1__* threadbag ; 

void *
FUNC4(void * arg)
{
  bag_t * bag = (bag_t *) arg;

  FUNC1(bag == &threadbag[bag->threadnum]);
  FUNC1(bag->started == 0);
  bag->started = 1;

  errno = bag->threadnum;

  FUNC0(1000);

  FUNC2(&stop_here);

  FUNC1(errno == bag->threadnum);

  FUNC3(&stop_here);

  FUNC0(1000);

  return 0;
}
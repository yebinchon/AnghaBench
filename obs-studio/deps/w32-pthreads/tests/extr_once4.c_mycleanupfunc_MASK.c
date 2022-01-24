#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int oncenum; int threadnum; int myPrio; int /*<<< orphan*/  w32Thread; } ;
typedef  TYPE_1__ bag_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  print_lock ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 

void
FUNC4(void * arg)
{
  bag_t * bag = (bag_t *) arg;
  FUNC0(&print_lock);
  /*      once thrd  prio error */
  FUNC3("%4d %4d %4d %4d\n",
	 bag->oncenum,
	 bag->threadnum,
	 bag->myPrio,
	 bag->myPrio - FUNC1(bag->w32Thread));
  FUNC2(&print_lock);
}
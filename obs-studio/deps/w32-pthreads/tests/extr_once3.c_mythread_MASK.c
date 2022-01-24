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
struct TYPE_2__ {int /*<<< orphan*/  cs; int /*<<< orphan*/  i; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  myfunc ; 
 TYPE_1__ numThreads ; 
 int /*<<< orphan*/ * once ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void *
FUNC6(void * arg)
{
  /*
   * Cancel every thread. These threads are deferred cancelable only, so
   * only the thread performing the once routine (my_func) will see it (there are
   * no other cancelation points here). The result will be that every thread
   * eventually cancels only when it becomes the new 'once' thread.
   */
  FUNC2(FUNC3(FUNC5()) == 0);
  FUNC2(FUNC4(&once[(int)(size_t)arg], myfunc) == 0);
  FUNC0(&numThreads.cs);
  numThreads.i++;
  FUNC1(&numThreads.cs);
  return (void*)(size_t)0;
}
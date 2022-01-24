#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ p; scalar_t__ x; } ;
typedef  TYPE_1__ pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int NUMTHREADS ; 
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  func ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC5 (TYPE_1__,void**) ; 
 int washere ; 

int
FUNC6()
{
  pthread_t t,
            last_t;
  pthread_attr_t attr;
  void * result = NULL;
  int i;

  FUNC0(FUNC1(&attr) == 0);;
  FUNC0(FUNC2(&attr, PTHREAD_CREATE_JOINABLE) == 0);

  washere = 0;
  FUNC0(FUNC3(&t, &attr, func, NULL) == 0);
  FUNC0(FUNC5(t, &result) == 0);;
  FUNC0((int)(size_t)result == 0);
  FUNC0(washere == 1);
  last_t = t;

  for (i = 1; i < NUMTHREADS; i++)
    {
      washere = 0;
      FUNC0(FUNC3(&t, &attr, func, (void *)(size_t)i) == 0);
      FUNC5(t, &result);
      FUNC0((int)(size_t) result == i);
      FUNC0(washere == 1);
      /* thread IDs should be unique */
      FUNC0(!FUNC4(t, last_t));
      /* thread struct pointers should be the same */
      FUNC0(t.p == last_t.p);
      /* thread handle reuse counter should be different by one */
      FUNC0(t.x == last_t.x+1);
      last_t = t;
    }

  return 0;
}
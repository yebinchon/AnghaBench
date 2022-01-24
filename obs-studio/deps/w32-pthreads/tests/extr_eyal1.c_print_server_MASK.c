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
struct TYPE_2__ {int work; int /*<<< orphan*/  mutex_started; int /*<<< orphan*/  mutex_ended; int /*<<< orphan*/  mutex_end; int /*<<< orphan*/  id; int /*<<< orphan*/  mutex_start; } ;
typedef  TYPE_1__ TC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mutex_todo ; 
 int nwork ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int todo ; 

__attribute__((used)) static int
FUNC4 (void *ptr)
{
  int		mywork;
  int		n;
  TC		*tc = (TC *)ptr;

  FUNC0(FUNC2 (&tc->mutex_started) == 0);

  for (;;)
    {
      FUNC0(FUNC2 (&tc->mutex_start) == 0);
      FUNC0(FUNC3 (&tc->mutex_start) == 0);
      FUNC0(FUNC2 (&tc->mutex_ended) == 0);
      FUNC0(FUNC3 (&tc->mutex_started) == 0);

      for (;;)
	{

	  /*
	   * get lock on todo list
	   */
	  FUNC0(FUNC2 (&mutex_todo) == 0);

	  mywork = todo;
	  if (todo >= 0)
	    {
	      ++todo;
	      if (todo >= nwork)
		todo = -1;
	    }
	  FUNC0(FUNC3 (&mutex_todo) == 0);

	  if (mywork < 0)
	    break;

	  FUNC0((n = FUNC1 (tc->id, mywork)) >= 0);
	  tc->work += n;
	}

      FUNC0(FUNC2 (&tc->mutex_end) == 0);
      FUNC0(FUNC3 (&tc->mutex_end) == 0);
      FUNC0(FUNC2 (&tc->mutex_started) == 0);
      FUNC0(FUNC3 (&tc->mutex_ended) == 0);

      if (-2 == mywork)
	break;
    }

  FUNC0(FUNC3 (&tc->mutex_started) == 0);

  return (0);
}
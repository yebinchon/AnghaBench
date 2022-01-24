#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int seed; int changed; scalar_t__ thread_num; int /*<<< orphan*/  reads; int /*<<< orphan*/  updates; } ;
typedef  TYPE_1__ thread_t ;
struct TYPE_4__ {scalar_t__ data; int /*<<< orphan*/  lock; int /*<<< orphan*/  updates; } ;

/* Variables and functions */
 int DATASIZE ; 
 int ITERATIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stdout ; 

void *FUNC8 (void *arg)
{
  thread_t *self = (thread_t*)arg;
  int iteration;
  int element = 0;
  int seed = self->seed;
  int interval = 1 + FUNC6 (&seed) % 71;

  self->changed = 0;

  for (iteration = 0; iteration < ITERATIONS; iteration++)
    {
      if (iteration % (ITERATIONS / 10) == 0)
        {
          FUNC5('.');
          FUNC1(stdout);
        }
      /*
       * Each "self->interval" iterations, perform an
       * update operation (write lock instead of read
       * lock).
       */
      if ((iteration % interval) == 0)
        {
          FUNC0(FUNC4 (&data[element].lock) == 0);
          data[element].data = self->thread_num;
          data[element].updates++;
          self->updates++;
	  interval = 1 + FUNC6 (&seed) % 71;
	  FUNC7();
          FUNC0(FUNC3 (&data[element].lock) == 0);
        } else {
          /*
           * Look at the current data element to see whether
           * the current thread last updated it. Count the
           * times, to report later.
           */
          FUNC0(FUNC2 (&data[element].lock) == 0);

          self->reads++;

          if (data[element].data != self->thread_num)
            {
              self->changed++;
	      interval = 1 + self->changed % 71;
            }

	  FUNC7();

          FUNC0(FUNC3 (&data[element].lock) == 0);
        }

      element = (element + 1) % DATASIZE;

    }

  return NULL;
}
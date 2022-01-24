#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int NUM_THREADS ; 
 int* accesscount ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  destroy_key ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  mythread ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  startBarrier ; 
 int /*<<< orphan*/  stderr ; 
 int* thread_destroyed ; 
 int* thread_set ; 

int
FUNC11()
{
  int i;
  int fail = 0;
  pthread_t thread[NUM_THREADS];

  FUNC0(FUNC4(&startBarrier, NULL, NUM_THREADS/2) == 0);

  for (i = 1; i < NUM_THREADS/2; i++)
    {
      accesscount[i] = thread_set[i] = thread_destroyed[i] = 0;
      FUNC0(FUNC6(&thread[i], NULL, mythread, (void *)&accesscount[i]) == 0);
    }

  /*
   * Here we test that existing threads will get a key created
   * for them.
   */
  FUNC0(FUNC8(&key, destroy_key) == 0);

  (void) FUNC5(&startBarrier);

  /*
   * Test main thread key.
   */
  accesscount[0] = 0;
  FUNC10((void *) &accesscount[0]);

  /*
   * Here we test that new threads will get a key created
   * for them.
   */
  for (i = NUM_THREADS/2; i < NUM_THREADS; i++)
    {
      accesscount[i] = thread_set[i] = thread_destroyed[i] = 0;
      FUNC0(FUNC6(&thread[i], NULL, mythread, (void *)&accesscount[i]) == 0);
    }

  /*
   * Wait for all threads to complete.
   */
  for (i = 1; i < NUM_THREADS; i++)
    {
	FUNC0(FUNC7(thread[i], NULL) == 0);
    }

  FUNC0(FUNC9(key) == 0);

  FUNC0(FUNC3(&startBarrier) == 0);

  for (i = 1; i < NUM_THREADS; i++)
    {
	/*
	 * The counter is incremented once when the key is set to
	 * a value, and again when the key is destroyed. If the key
	 * doesn't get set for some reason then it will still be
	 * NULL and the destroy function will not be called, and
	 * hence accesscount will not equal 2.
	 */
	if (accesscount[i] != 2)
	  {
	    fail++;
	    FUNC2(stderr, "Thread %d key, set = %d, destroyed = %d\n",
			i, thread_set[i], thread_destroyed[i]);
	  }
    }

  FUNC1(stderr);

  return (fail);
}
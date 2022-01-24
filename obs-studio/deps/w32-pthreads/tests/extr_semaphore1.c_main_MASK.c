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
typedef  int /*<<< orphan*/  sem_t ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 char** error_string ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  thr ; 

int
FUNC8()
{
  pthread_t t;
  sem_t s;
  void* result1 = (void*)-1;
  int result2;

  FUNC0(FUNC3(&t, NULL, thr, NULL) == 0);
  FUNC0(FUNC4(t, &result1) == 0);
  FUNC0((int)(size_t)result1 == 0);

  FUNC0(FUNC5(&s, PTHREAD_PROCESS_PRIVATE, 0) == 0);

  FUNC0((result2 = FUNC7(&s)) == -1);

  if (result2 == -1)
  {
    int err = errno;
    if (err != EAGAIN)
    {
      FUNC2("main: sem_trywait 1: expecting error %s: got %s\n",
	     error_string[EAGAIN], error_string[err]); FUNC1(stdout);
    }
    FUNC0(err == EAGAIN);
  }
  else
  {
    FUNC2("main: ok 1\n");
  }

  FUNC0((result2 = FUNC6(&s)) == 0);

  FUNC0((result2 = FUNC7(&s)) == 0);

  FUNC0(FUNC6(&s) == 0);

  return 0;
}
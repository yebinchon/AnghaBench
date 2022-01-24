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

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 char** error_string ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

void *
FUNC6(void * arg)
{
  sem_t s;
  int result;

  FUNC0(FUNC3(&s, PTHREAD_PROCESS_PRIVATE, 0) == 0);

  FUNC0((result = FUNC5(&s)) == -1);

  if ( result == -1 )
  {
    int err = errno;
    if (err != EAGAIN)
    {
      FUNC2("thread: sem_trywait 1: expecting error %s: got %s\n",
	     error_string[EAGAIN], error_string[err]); FUNC1(stdout);
    }
    FUNC0(err == EAGAIN);
  }
  else
  {
    FUNC2("thread: ok 1\n");
  }

  FUNC0((result = FUNC4(&s)) == 0);

  FUNC0((result = FUNC5(&s)) == 0);

  FUNC0(FUNC4(&s) == 0);

  return NULL;
}
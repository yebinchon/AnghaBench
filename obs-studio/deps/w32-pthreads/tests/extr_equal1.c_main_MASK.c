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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  func ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int 
FUNC4()
{
  pthread_t t1, t2;

  FUNC1(FUNC2(&t1, NULL, func, (void *) 1) == 0);

  FUNC1(FUNC2(&t2, NULL, func, (void *) 2) == 0);

  FUNC1(FUNC3(t1, t2) == 0);

  FUNC1(FUNC3(t1,t1) != 0);

  /* This is a hack. We don't want to rely on pthread_join
     yet if we can help it. */
   FUNC0(4000);

  /* Success. */
  return 0;
}
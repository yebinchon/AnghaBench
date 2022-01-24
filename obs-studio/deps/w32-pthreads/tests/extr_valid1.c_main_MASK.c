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
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  func ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int washere ; 

int
FUNC5()
{
  pthread_t t;
  void * result = NULL;

  washere = 0;
  FUNC0(FUNC1(&t, NULL, func, NULL) == 0);
  FUNC0(FUNC2(t, &result) == 0);
  FUNC0((int)(size_t)result == 0);
  FUNC0(washere == 1);
  FUNC4();
  FUNC0(FUNC3(t, 0) == ESRCH);

  return 0;
}
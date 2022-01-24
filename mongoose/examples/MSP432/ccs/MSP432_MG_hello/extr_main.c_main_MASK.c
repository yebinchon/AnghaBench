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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LL_ERROR ; 
 int /*<<< orphan*/  LL_INFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MGOS_TASK_PRIORITY ; 
 int /*<<< orphan*/  MG_TASK_STACK_SIZE ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mg_init ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC9(void) {
  FUNC1();
  FUNC0();
  FUNC2();

  FUNC8(stdout, NULL, _IOLBF, 0);
  FUNC8(stderr, NULL, _IOLBF, 0);
  FUNC5(LL_INFO);
  FUNC4(stdout);

  if (!FUNC6(MGOS_TASK_PRIORITY, MG_TASK_STACK_SIZE, mg_init)) {
    FUNC3(LL_ERROR, ("Error starting Mongoose task"));
    return 1;
  }

  FUNC7();

  return 0;
}
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
typedef  int /*<<< orphan*/  test_affinity ;
typedef  int /*<<< orphan*/  cpu_set_t ;
typedef  int /*<<< orphan*/  affinity ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int CPU_SETSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	cpu_set_t affinity, test_affinity;
	int i;

	FUNC8(0, sizeof(affinity), &affinity);
	FUNC3(&test_affinity);
	for (i = 0; i < CPU_SETSIZE; i++) {
		if (FUNC1(i, &affinity)) {
			FUNC2(i, &test_affinity);
			FUNC10(0, sizeof(test_affinity),
					&test_affinity);
			FUNC4(FUNC9() == i);
			FUNC4(FUNC6() == i);
			FUNC4(FUNC7() == i);
			FUNC4(FUNC5() == i);
			FUNC0(i, &test_affinity);
		}
	}
	FUNC10(0, sizeof(affinity), &affinity);
}
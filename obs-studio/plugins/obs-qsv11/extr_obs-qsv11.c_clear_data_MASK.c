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
struct obs_qsv {int /*<<< orphan*/ * extra_data; int /*<<< orphan*/ * context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_QsvCs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct obs_qsv *obsqsv)
{
	if (obsqsv->context) {
		FUNC0(&g_QsvCs);
		FUNC3(obsqsv->context);
		obsqsv->context = NULL;
		FUNC1(&g_QsvCs);

		// bfree(obsqsv->sei);
		FUNC2(obsqsv->extra_data);

		// obsqsv->sei = NULL;
		obsqsv->extra_data = NULL;
	}
}
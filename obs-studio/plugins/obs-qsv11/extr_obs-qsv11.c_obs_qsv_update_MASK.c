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
struct obs_qsv {int /*<<< orphan*/  params; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_QsvCs ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct obs_qsv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static bool FUNC5(void *data, obs_data_t *settings)
{
	struct obs_qsv *obsqsv = data;
	bool success = FUNC3(obsqsv, settings);
	int ret;

	if (success) {
		FUNC0(&g_QsvCs);

		ret = FUNC2(obsqsv->context, &obsqsv->params);
		if (ret != 0)
			FUNC4("Failed to reconfigure: %d", ret);

		FUNC1(&g_QsvCs);

		return ret == 0;
	}

	return false;
}
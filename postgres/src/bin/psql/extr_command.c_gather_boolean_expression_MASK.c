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
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static PQExpBuffer
FUNC5(PsqlScanState scan_state)
{
	PQExpBuffer exp_buf = FUNC2();
	int			num_options = 0;
	char	   *value;

	/* collect all arguments for the conditional command into exp_buf */
	while ((value = FUNC4(scan_state,
										   OT_NORMAL, NULL, false)) != NULL)
	{
		/* add spaces between tokens */
		if (num_options > 0)
			FUNC0(exp_buf, ' ');
		FUNC1(exp_buf, value);
		num_options++;
		FUNC3(value);
	}

	return exp_buf;
}
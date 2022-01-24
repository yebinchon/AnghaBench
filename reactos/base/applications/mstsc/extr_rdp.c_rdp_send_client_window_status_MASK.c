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
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  RDP_DATA_PDU_CLIENT_WINDOW_STATUS ; 
 int /*<<< orphan*/  g_height ; 
 int /*<<< orphan*/  g_width ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(int status)
{
	STREAM s;
	static int current_status = 1;

	if (current_status == status)
		return;

	s = FUNC2(12);

	FUNC1(s, status);

	switch (status)
	{
		case 0:	/* shut the server up */
			break;

		case 1:	/* receive data again */
			FUNC1(s, 0);	/* unknown */
			FUNC0(s, g_width);
			FUNC0(s, g_height);
			break;
	}

	FUNC4(s);
	FUNC3(s, RDP_DATA_PDU_CLIENT_WINDOW_STATUS);
	current_status = status;
}
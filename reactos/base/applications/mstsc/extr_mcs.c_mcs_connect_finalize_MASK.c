#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ mcs_id; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 scalar_t__ MCS_GLOBAL_CHANNEL ; 
 scalar_t__ MCS_USERCHANNEL_BASE ; 
 int /*<<< orphan*/  True ; 
 TYPE_1__* g_channels ; 
 scalar_t__ g_mcs_userid ; 
 unsigned int g_num_channels ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

RD_BOOL
FUNC8(STREAM mcs_data)
{
	unsigned int i;

	FUNC6(mcs_data);
	if (!FUNC3(mcs_data))
		goto error;

	FUNC7();

	FUNC4();
	if (!FUNC1(&g_mcs_userid))
		goto error;

	FUNC5(g_mcs_userid + MCS_USERCHANNEL_BASE);

	if (!FUNC2())
		goto error;

	FUNC5(MCS_GLOBAL_CHANNEL);
	if (!FUNC2())
		goto error;

	for (i = 0; i < g_num_channels; i++)
	{
		FUNC5(g_channels[i].mcs_id);
		if (!FUNC2())
			goto error;
	}
	return True;

      error:
	FUNC0();
	return False;
}
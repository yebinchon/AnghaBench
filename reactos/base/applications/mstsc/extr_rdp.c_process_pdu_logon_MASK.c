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
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ INFOTYPE_LOGON_EXTENDED_INF ; 
 scalar_t__ LOGON_EX_AUTORECONNECTCOOKIE ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  g_has_reconnect_random ; 
 scalar_t__ g_reconnect_logonid ; 
 int /*<<< orphan*/  g_reconnect_random ; 
 int /*<<< orphan*/  g_reconnect_random_ts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(STREAM s)
{
	uint32 infotype;
	FUNC1(s, infotype);
	if (infotype == INFOTYPE_LOGON_EXTENDED_INF)
	{
		uint32 fieldspresent;

		FUNC3(s, 2);	/* Length */
		FUNC1(s, fieldspresent);
		if (fieldspresent & LOGON_EX_AUTORECONNECTCOOKIE)
		{
			uint32 len;
			uint32 version;

			/* TS_LOGON_INFO_FIELD */
			FUNC3(s, 4);	/* cbFieldData */

			/* ARC_SC_PRIVATE_PACKET */
			FUNC1(s, len);
			if (len != 28)
			{
				FUNC5("Invalid length in Auto-Reconnect packet\n");
				return;
			}

			FUNC1(s, version);
			if (version != 1)
			{
				FUNC5("Unsupported version of Auto-Reconnect packet\n");
				return;
			}

			FUNC1(s, g_reconnect_logonid);
			FUNC2(s, g_reconnect_random, 16);
			g_has_reconnect_random = True;
			g_reconnect_random_ts = FUNC4(NULL);
			FUNC0(("Saving auto-reconnect cookie, id=%u\n", g_reconnect_logonid));
		}
	}
}
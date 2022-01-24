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
 int /*<<< orphan*/  ingests_loaded ; 
 int /*<<< orphan*/  ingests_refreshed ; 
 int /*<<< orphan*/  ingests_refreshing ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  twitch_ingest_update ; 
 int /*<<< orphan*/  twitch_update_info ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(int seconds)
{
	if (FUNC1(&ingests_refreshed))
		return;

	if (!FUNC1(&ingests_refreshing)) {
		FUNC2(&ingests_refreshing, true);

		twitch_update_info = FUNC4(
			"[twitch ingest update] ", FUNC0(),
			"https://ingest.twitch.tv/api/v2/ingests",
			twitch_ingest_update, NULL);
	}

	/* wait five seconds max when loading ingests for the first time */
	if (!FUNC1(&ingests_loaded)) {
		for (int i = 0; i < seconds * 100; i++) {
			if (FUNC1(&ingests_refreshed)) {
				break;
			}
			FUNC3(10);
		}
	}
}
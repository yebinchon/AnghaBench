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
struct ingest {int /*<<< orphan*/  url; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  cur_ingests ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ingest*) ; 
 int /*<<< orphan*/  ingests_loaded ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  mutex ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	char *twitch_cache = FUNC4("twitch_ingests.json");

	struct ingest def = {.name = FUNC1("Default"),
			     .url = FUNC1("rtmp://live.twitch.tv/app")};

	FUNC8(&mutex);
	FUNC2(cur_ingests, &def);
	FUNC9(&mutex);

	if (FUNC6(twitch_cache)) {
		char *data = FUNC7(twitch_cache);
		bool success;

		FUNC8(&mutex);
		success = FUNC3(data, false);
		FUNC9(&mutex);

		if (success) {
			FUNC5(&ingests_loaded, true);
		}

		FUNC0(data);
	}

	FUNC0(twitch_cache);
}
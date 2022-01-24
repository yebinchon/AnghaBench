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
struct window_capture {int priority; void* compatibility; void* use_wildcards; void* cursor; int /*<<< orphan*/ * class; int /*<<< orphan*/ * executable; int /*<<< orphan*/  source; int /*<<< orphan*/ * title; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  enum window_priority { ____Placeholder_window_priority } window_priority ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct window_capture *wc, obs_data_t *s)
{
	const char *window = FUNC5(s, "window");
	int priority = (int)FUNC4(s, "priority");

	FUNC0(wc->title);
	FUNC0(wc->class);
	FUNC0(wc->executable);

	FUNC2(window, &wc->class, &wc->title, &wc->executable);

	if (wc->title != NULL) {
		FUNC1(LOG_INFO,
		     "[window-capture: '%s'] update settings:\n"
		     "\texecutable: %s",
		     FUNC6(wc->source), wc->executable);
		FUNC1(LOG_DEBUG, "\tclass:      %s", wc->class);
	}

	wc->priority = (enum window_priority)priority;
	wc->cursor = FUNC3(s, "cursor");
	wc->use_wildcards = FUNC3(s, "use_wildcards");
	wc->compatibility = FUNC3(s, "compatibility");
}
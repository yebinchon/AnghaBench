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
typedef  int /*<<< orphan*/  wchar_t ;
struct game_capture {int /*<<< orphan*/  keepalive_mutex; int /*<<< orphan*/  process_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  WINDOW_HOOK_KEEPALIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC4(struct game_capture *gc)
{
	wchar_t new_name[64];
	FUNC2(new_name, 64, L"%s%lu", WINDOW_HOOK_KEEPALIVE,
		   gc->process_id);

	gc->keepalive_mutex = FUNC0(NULL, false, new_name);
	if (!gc->keepalive_mutex) {
		FUNC3("Failed to create keepalive mutex: %lu", FUNC1());
		return false;
	}

	return true;
}
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
struct game_capture {TYPE_1__* global_hook_info; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CAPTURE_TYPE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC3 (struct game_capture*) ; 

__attribute__((used)) static bool FUNC4(struct game_capture *gc)
{
	FUNC0("Starting capture");

	if (gc->global_hook_info->type == CAPTURE_TYPE_MEMORY) {
		if (!FUNC2(gc)) {
			return false;
		}

		FUNC1("memory capture successful");
	} else {
		if (!FUNC3(gc)) {
			return false;
		}

		FUNC1("shared texture capture successful");
	}

	return true;
}
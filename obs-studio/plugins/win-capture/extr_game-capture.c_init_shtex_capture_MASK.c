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
struct game_capture {int /*<<< orphan*/  texture; TYPE_1__* shtex_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tex_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static inline bool FUNC5(struct game_capture *gc)
{
	FUNC2();
	FUNC0(gc->texture);
	gc->texture = FUNC1(gc->shtex_data->tex_handle);
	FUNC3();

	if (!gc->texture) {
		FUNC4("init_shtex_capture: failed to open shared handle");
		return false;
	}

	return true;
}
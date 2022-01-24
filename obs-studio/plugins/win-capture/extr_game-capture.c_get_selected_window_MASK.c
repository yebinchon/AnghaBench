#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_5__ {int /*<<< orphan*/  array; } ;
struct TYPE_4__ {int /*<<< orphan*/  array; } ;
struct TYPE_6__ {int /*<<< orphan*/  array; } ;
struct game_capture {int wait_for_target_startup; TYPE_2__ executable; TYPE_1__ title; TYPE_3__ class; int /*<<< orphan*/  priority; } ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INCLUDE_MINIMIZED ; 
 scalar_t__ FUNC1 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct game_capture*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct game_capture *gc)
{
	HWND window;

	if (FUNC1(&gc->class, "dwm") == 0) {
		wchar_t class_w[512];
		FUNC3(gc->class.array, 0, class_w, 512);
		window = FUNC0(class_w, NULL);
	} else {
		window = FUNC2(INCLUDE_MINIMIZED, gc->priority,
				     gc->class.array, gc->title.array,
				     gc->executable.array);
	}

	if (window) {
		FUNC4(gc, window);
	} else {
		gc->wait_for_target_startup = true;
	}
}
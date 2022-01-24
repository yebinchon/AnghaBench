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
struct TYPE_2__ {int /*<<< orphan*/  hwnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DUMMY_WINDOW_CLASS_NAME ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int WS_CLIPCHILDREN ; 
 int WS_CLIPSIBLINGS ; 
 int WS_POPUP ; 
 TYPE_1__ data ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC4(void)
{
	data.hwnd = FUNC0(
		0, DUMMY_WINDOW_CLASS_NAME, L"Dummy GL window, ignore",
		WS_POPUP | WS_CLIPCHILDREN | WS_CLIPSIBLINGS, 0, 0, 2, 2, NULL,
		NULL, FUNC2(NULL), NULL);
	if (!data.hwnd) {
		FUNC3("gl_shtex_init_window: failed to create window: %d",
		     FUNC1());
		return false;
	}

	return true;
}
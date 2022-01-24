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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  WS_POPUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dummy_window_class ; 

__attribute__((used)) static inline HWND FUNC3(void)
{
	HWND hwnd = FUNC0(0, dummy_window_class, "Dummy GL Window",
				    WS_POPUP, 0, 0, 2, 2, NULL, NULL,
				    FUNC1(NULL), NULL);
	if (!hwnd)
		FUNC2(LOG_ERROR, "Could not create dummy context window");

	return hwnd;
}
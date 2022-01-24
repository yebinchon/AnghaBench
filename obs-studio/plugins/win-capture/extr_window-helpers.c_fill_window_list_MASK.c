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
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  enum window_search_mode { ____Placeholder_window_search_mode } window_search_mode ;
typedef  int /*<<< orphan*/  add_window_cb ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,scalar_t__*,int*) ; 
 scalar_t__ FUNC2 (scalar_t__,int,scalar_t__*,int) ; 

void FUNC3(obs_property_t *p, enum window_search_mode mode,
		      add_window_cb callback)
{
	HWND parent;
	bool use_findwindowex = false;

	HWND window = FUNC1(mode, &parent, &use_findwindowex);

	while (window) {
		FUNC0(p, window, callback);
		window = FUNC2(window, mode, &parent, use_findwindowex);
	}
}
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
struct TYPE_2__ {int /*<<< orphan*/  hdc; int /*<<< orphan*/  hwnd; } ;
struct gl_platform {TYPE_1__ window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DUMMY_WNDCLASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  WS_POPUP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct gl_platform *plat)
{
	plat->window.hwnd = FUNC0(0, DUMMY_WNDCLASS,
					    "OpenGL Dummy Window", WS_POPUP, 0,
					    0, 1, 1, NULL, NULL,
					    FUNC3(NULL), NULL);
	if (!plat->window.hwnd) {
		FUNC4(LOG_ERROR, "Failed to create dummy GL window, %lu",
		     FUNC2());
		return false;
	}

	plat->window.hdc = FUNC1(plat->window.hwnd);
	if (!plat->window.hdc) {
		FUNC4(LOG_ERROR, "Failed to get dummy GL window DC (%lu)",
		     FUNC2());
		return false;
	}

	return true;
}
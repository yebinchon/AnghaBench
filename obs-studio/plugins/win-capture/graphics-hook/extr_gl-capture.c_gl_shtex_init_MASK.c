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
struct TYPE_2__ {scalar_t__ handle; int /*<<< orphan*/  format; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  base_cy; int /*<<< orphan*/  base_cx; int /*<<< orphan*/  shtex_info; } ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,uintptr_t) ; 
 TYPE_1__ data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static bool FUNC7(HWND window)
{
	if (!FUNC5()) {
		return false;
	}
	if (!FUNC2()) {
		return false;
	}
	if (!FUNC3()) {
		return false;
	}
	if (!FUNC4()) {
		return false;
	}
	if (!FUNC1()) {
		return false;
	}
	if (!FUNC0(&data.shtex_info, window, data.base_cx,
				data.base_cy, data.cx, data.cy, data.format,
				true, (uintptr_t)data.handle)) {
		return false;
	}

	FUNC6("gl shared texture capture successful");
	return true;
}
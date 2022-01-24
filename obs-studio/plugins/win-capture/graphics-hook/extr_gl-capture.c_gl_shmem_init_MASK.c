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
struct TYPE_2__ {int cx; int /*<<< orphan*/  format; int /*<<< orphan*/  cy; int /*<<< orphan*/  base_cy; int /*<<< orphan*/  base_cx; int /*<<< orphan*/  shmem_info; } ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(HWND window)
{
	if (!FUNC2()) {
		return false;
	}
	if (!FUNC1()) {
		return false;
	}
	if (!FUNC0(&data.shmem_info, window, data.base_cx,
				data.base_cy, data.cx, data.cy, data.cx * 4,
				data.format, true)) {
		return false;
	}

	FUNC3("gl memory capture successful");
	return true;
}
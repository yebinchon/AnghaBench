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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int int64_t ;
struct TYPE_2__ {int /*<<< orphan*/  QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
typedef  int /*<<< orphan*/  PULARGE_INTEGER ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int64_t FUNC3(const char *path)
{
	ULARGE_INTEGER remainingSpace;
	char abs_path[512];
	wchar_t w_abs_path[512];

	if (FUNC1(path, abs_path, 512) > 0) {
		if (FUNC2(abs_path, 0, w_abs_path, 512) > 0) {
			BOOL success = FUNC0(
				w_abs_path, (PULARGE_INTEGER)&remainingSpace,
				NULL, NULL);
			if (success)
				return (int64_t)remainingSpace.QuadPart;
		}
	}

	return -1;
}
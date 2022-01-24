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
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (scalar_t__*,char*) ; 

bool FUNC2(HWND hwnd)
{
	wchar_t name[256];

	name[0] = 0;
	if (!FUNC0(hwnd, name, sizeof(name) / sizeof(wchar_t)))
		return false;

	return FUNC1(name, L"ApplicationFrameWindow") == 0;
}
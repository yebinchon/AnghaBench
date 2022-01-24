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
typedef  int /*<<< orphan*/  wchar_t ;
struct dstr {int dummy; } ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

void FUNC5(struct dstr *name, HWND hwnd)
{
	wchar_t *temp;
	int len;

	len = FUNC0(hwnd);
	if (!len)
		return;

	temp = FUNC4(sizeof(wchar_t) * (len + 1));
	if (FUNC1(hwnd, temp, len + 1))
		FUNC2(name, temp);
	FUNC3(temp);
}
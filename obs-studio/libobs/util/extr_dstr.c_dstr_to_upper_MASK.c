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
struct dstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct dstr*) ; 
 scalar_t__* FUNC3 (struct dstr*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void FUNC5(struct dstr *str)
{
	wchar_t *wstr;
	wchar_t *temp;

	if (FUNC2(str))
		return;

	wstr = FUNC3(str);
	temp = wstr;

	if (!wstr)
		return;

	while (*temp) {
		*temp = (wchar_t)FUNC4(*temp);
		temp++;
	}

	FUNC1(str, wstr);
	FUNC0(wstr);
}
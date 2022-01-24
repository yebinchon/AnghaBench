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
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 

HWND FUNC2(HWND parent)
{
	DWORD parent_id = 0;
	HWND child;

	FUNC1(parent, &parent_id);
	child = FUNC0(parent, NULL, NULL, NULL);

	while (child) {
		DWORD child_id = 0;
		FUNC1(child, &child_id);

		if (child_id != parent_id)
			return child;

		child = FUNC0(parent, child, NULL, NULL);
	}

	return NULL;
}
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

/* Variables and functions */
 size_t CMATRIX ; 
 int /*<<< orphan*/  F_NORMAL ; 
 size_t LOCKER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char** utils ; 

__attribute__((used)) static void FUNC2(void)
{
	char *tmp = utils[LOCKER];

	if (!FUNC0(tmp))
		tmp = utils[CMATRIX];

	FUNC1(tmp, NULL, NULL, NULL, F_NORMAL);
}
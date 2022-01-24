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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  WSAData ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ init ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

BOOL FUNC4(void)
{
	int err;
	err = FUNC2(FUNC0( 3, 3 ), &WSAData);	// XXX THIS SHOULD BE FAILING!!!!!!!!!!!!!!!!!
	if (err != 0) {
		init = 0;
		FUNC3(L"WSAStartup failed!\n");
		FUNC1();
		return FALSE;
	}
	return TRUE;
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ restricted ; 

int
FUNC2()
{
    if (restricted)
    {
	FUNC0(FUNC1("E145: Shell commands not allowed in rvim"));
	return TRUE;
    }
    return FALSE;
}
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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_HELP_CMD_ONLINE ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC1(INT argc, LPWSTR *argv)
{
    FUNC0(StdOut, IDS_HELP_CMD_ONLINE);
    return TRUE;
}
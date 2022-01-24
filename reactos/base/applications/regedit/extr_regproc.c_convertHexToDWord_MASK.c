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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static BOOL FUNC5(WCHAR* str, DWORD *dw)
{
    char buf[9];
    char dummy;

    FUNC0(CP_ACP, 0, str, -1, buf, 9, NULL, NULL);
    if (FUNC3(str) > 8 || FUNC4(buf, "%lx%c", dw, &dummy) != 1) {
        FUNC1(stderr,"%d: ERROR, invalid hex value\n", FUNC2());
        return FALSE;
    }
    return TRUE;
}
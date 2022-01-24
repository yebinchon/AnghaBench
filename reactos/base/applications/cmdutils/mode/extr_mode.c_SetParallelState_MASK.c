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
typedef  char* INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DDD_REMOVE_DEFINITION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAX_PORTNAME_LEN ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 

int FUNC5(INT nPortNum)
{
    WCHAR szPortName[MAX_PORTNAME_LEN];
    WCHAR szTargetPath[MAX_PORTNAME_LEN];

    FUNC4(szPortName, L"LPT%d", nPortNum);
    FUNC4(szTargetPath, L"COM%d", nPortNum);
    if (!FUNC1(DDD_REMOVE_DEFINITION, szPortName, szTargetPath))
    {
        FUNC0(StdErr, L"ERROR: SetParallelState(%d) - DefineDosDevice(%s) failed: 0x%lx\n", nPortNum, szPortName, FUNC2());
    }

    FUNC3(nPortNum);
    return 0;
}
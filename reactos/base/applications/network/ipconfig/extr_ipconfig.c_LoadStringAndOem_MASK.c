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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ProcessHeap ; 

int FUNC4(HINSTANCE hInst,
                     UINT uID,
                     LPTSTR szNode,
                     int byteSize)
{
    TCHAR *szTmp;
    int res;

    szTmp = (LPTSTR)FUNC1(ProcessHeap, 0, byteSize);
    if (szTmp == NULL)
    {
        return 0;
    }

    res = FUNC3(hInst, uID, szTmp, byteSize); 
    FUNC0(szTmp, szNode);
    FUNC2(ProcessHeap, 0, szTmp);
    return res;
}
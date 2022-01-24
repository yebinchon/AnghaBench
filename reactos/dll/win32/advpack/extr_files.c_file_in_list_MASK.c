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
typedef  scalar_t__* LPCSTR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 

__attribute__((used)) static BOOL FUNC2(LPCSTR szFile, LPCSTR szFileList)
{
    DWORD dwLen = FUNC1(szFile);
    DWORD dwTestLen;

    while (*szFileList)
    {
        dwTestLen = FUNC1(szFileList);

        if (dwTestLen == dwLen)
        {
            if (!FUNC0(szFile, szFileList))
                return TRUE;
        }

        szFileList += dwTestLen + 1;
    }

    return FALSE;
}
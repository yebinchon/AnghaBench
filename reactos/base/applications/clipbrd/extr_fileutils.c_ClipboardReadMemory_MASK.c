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
typedef  scalar_t__ WORD ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CLIP_FMT_31 ; 
 scalar_t__ CLIP_FMT_BK ; 
 scalar_t__ CLIP_FMT_NT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC5(HANDLE hFile, DWORD dwFormat, DWORD dwOffset, DWORD dwLength, WORD FileIdentifier, PVOID lpFormatName)
{
    HGLOBAL hData;
    DWORD dwTemp = 0;

    hData = FUNC0(hFile, dwOffset, dwLength);
    if (!hData)
        return FALSE;

    if ((dwFormat >= 0xC000) && (dwFormat <= 0xFFFF))
    {
        if (FileIdentifier == CLIP_FMT_31)
            dwTemp = FUNC2((LPCSTR)lpFormatName);
        else if ((FileIdentifier == CLIP_FMT_NT) || (FileIdentifier == CLIP_FMT_BK))
            dwTemp = FUNC3((LPCWSTR)lpFormatName);

        if (!dwTemp)
        {
            FUNC1(hData);
            return FALSE;
        }
    }
    else
    {
        dwTemp = dwFormat;
    }

    if (!FUNC4(dwTemp, hData))
    {
        FUNC1(hData);
        return FALSE;
    }

    return TRUE;
}
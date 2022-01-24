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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  HENHMETAFILE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CF_ENHMETAFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC8(HANDLE hFile, DWORD dwOffset, DWORD dwLength)
{
    HENHMETAFILE hEmf;
    HGLOBAL hData;
    LPVOID lpData;

    hData = FUNC0(hFile, dwOffset, dwLength);
    if (!hData)
    {
        return FALSE;
    }

    lpData = FUNC3(hData);
    if (!lpData)
    {
        FUNC2(hData);
        return FALSE;
    }

    hEmf = FUNC6(dwLength, lpData);

    FUNC4(hData);
    FUNC2(hData);

    if (!hEmf)
    {
        FUNC7(ERROR_OUTOFMEMORY);
        return FALSE;
    }

    if (!FUNC5(CF_ENHMETAFILE, hEmf))
    {
        FUNC1(hEmf);
        return FALSE;
    }

    return TRUE;
}
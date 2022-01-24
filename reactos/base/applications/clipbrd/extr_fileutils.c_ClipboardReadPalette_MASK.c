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
typedef  int /*<<< orphan*/  LPLOGPALETTE ;
typedef  int /*<<< orphan*/  HPALETTE ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CF_PALETTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC8(HANDLE hFile, DWORD dwOffset, DWORD dwLength)
{
    LPLOGPALETTE lpPalette;
    HPALETTE hPalette;
    HGLOBAL hData;

    hData = FUNC0(hFile, dwOffset, dwLength);
    if (!hData)
    {
        return FALSE;
    }

    lpPalette = FUNC4(hData);
    if (!lpPalette)
    {
        FUNC3(hData);
        return FALSE;
    }

    hPalette = FUNC1(lpPalette);
    if (!hPalette)
    {
        FUNC5(hData);
        FUNC3(hData);
        FUNC7(ERROR_OUTOFMEMORY);
        return FALSE;
    }

    FUNC5(hData);
    FUNC3(hData);

    if (!FUNC6(CF_PALETTE, hPalette))
    {
        FUNC2(hPalette);
        return FALSE;
    }

    return TRUE;
}
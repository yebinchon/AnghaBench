#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* bmBits; } ;
typedef  TYPE_1__* LPBITMAP ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  CF_BITMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC8(HANDLE hFile, DWORD dwOffset, DWORD dwLength)
{
    HGLOBAL hData;
    HBITMAP hBitmap;
    LPBITMAP lpBitmap;

    hData = FUNC0(hFile, dwOffset, dwLength);
    if (!hData)
    {
        return FALSE;
    }

    lpBitmap = FUNC4(hData);
    if (!lpBitmap)
    {
        FUNC3(hData);
        return FALSE;
    }

    lpBitmap->bmBits = lpBitmap + sizeof(BITMAP) + 1;

    hBitmap = FUNC1(lpBitmap);

    FUNC5(hData);
    FUNC3(hData);

    if (!hBitmap)
    {
        FUNC7(ERROR_OUTOFMEMORY);
        return FALSE;
    }

    if (!FUNC6(CF_BITMAP, hBitmap))
    {
        FUNC2(hBitmap);
        return FALSE;
    }

    return TRUE;
}
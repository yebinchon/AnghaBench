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
typedef  int /*<<< orphan*/  HPALETTE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CF_PALETTE ; 
 int FALSE ; 
 scalar_t__ GDI_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

BOOL FUNC4(HDC hdc)
{
    BOOL Success;
    HPALETTE hPalette, hOldPalette;

    if (!FUNC1(CF_PALETTE))
        return FALSE;

    hPalette = FUNC0(CF_PALETTE);
    if (!hPalette)
        return FALSE;

    hOldPalette = FUNC3(hdc, hPalette, FALSE);
    if (!hOldPalette)
        return FALSE;

    Success = (FUNC2(hdc) != GDI_ERROR);

    FUNC3(hdc, hOldPalette, FALSE);

    return Success;
}
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
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (HDC hdc, INT left, INT top, COLORREF clr)
{
    INT x, y;
    HPEN hPen, hOldPen;

    if (!(hPen = FUNC0( PS_SOLID, 1, clr))) return;
    hOldPen = FUNC4 ( hdc, hPen );
    x = left + 2;
    y = top;
    FUNC3 (hdc, x, y, NULL);
    FUNC2 (hdc, x+5, y++); x++;
    FUNC3 (hdc, x, y, NULL);
    FUNC2 (hdc, x+3, y++); x++;
    FUNC3 (hdc, x, y, NULL);
    FUNC2 (hdc, x+1, y);
    FUNC4( hdc, hOldPen );
    FUNC1( hPen );
}
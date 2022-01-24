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
struct nk_color {int dummy; } ;
typedef  int /*<<< orphan*/ * HPEN ;
typedef  int /*<<< orphan*/ * HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_PEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_BRUSH ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,short,short,short,short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,short,short,short,short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nk_color) ; 

__attribute__((used)) static void
FUNC8(HDC dc, short x, short y, unsigned short w,
    unsigned short h, unsigned short r, unsigned short line_thickness, struct nk_color col)
{
    COLORREF color = FUNC7(col);

    HPEN pen = NULL;
    if (line_thickness == 1) {
        FUNC6(dc, color);
    } else {
        pen = FUNC0(PS_SOLID, line_thickness, color);
        FUNC5(dc, pen);
    }

    HGDIOBJ br = FUNC5(dc, FUNC2(NULL_BRUSH));
    if (r == 0) {
        FUNC3(dc, x, y, x + w, y + h);
    } else {
        FUNC4(dc, x, y, x + w, y + h, r, r);
    }
    FUNC5(dc, br);

    if (pen) { 
        FUNC5(dc, FUNC2(DC_PEN));
        FUNC1(pen);
    }
}
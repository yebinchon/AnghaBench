#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nk_color {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pen; int /*<<< orphan*/  memory; } ;
typedef  int /*<<< orphan*/  REAL ;
typedef  short INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,short,short,short,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,short,short,short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nk_color) ; 
 TYPE_1__ gdip ; 

__attribute__((used)) static void
FUNC6(short x, short y, unsigned short w,
    unsigned short h, unsigned short r, unsigned short line_thickness, struct nk_color col)
{
    FUNC4(gdip.pen, (REAL)line_thickness);
    FUNC3(gdip.pen, FUNC5(col));
    if (r == 0) {
        FUNC2(gdip.memory, gdip.pen, x, y, w, h);
    } else {
        INT d = 2 * r;
        FUNC0(gdip.memory, gdip.pen, x, y, d, d, 180, 90);
        FUNC1(gdip.memory, gdip.pen, x + r, y, x + w - r, y);
        FUNC0(gdip.memory, gdip.pen, x + w - d, y, d, d, 270, 90);
        FUNC1(gdip.memory, gdip.pen, x + w, y + r, x + w, y + h - r);
        FUNC0(gdip.memory, gdip.pen, x + w - d, y + h - d, d, d, 0, 90);
        FUNC1(gdip.memory, gdip.pen, x, y + r, x, y + h - r);
        FUNC0(gdip.memory, gdip.pen, x, y + h - d, d, d, 90, 90);
        FUNC1(gdip.memory, gdip.pen, x + r, y + h, x + w - r, y + h);
    }
}
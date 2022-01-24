#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nk_vec2i {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct nk_color {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ POINT ;
typedef  int /*<<< orphan*/ * HPEN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_PEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPAQUE ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nk_color) ; 

__attribute__((used)) static void
FUNC8(HDC dc, struct nk_vec2i p1,
    struct nk_vec2i p2, struct nk_vec2i p3, struct nk_vec2i p4,
    unsigned short line_thickness, struct nk_color col)
{
    COLORREF color = FUNC7(col);
    POINT p[] = {
        { p1.x, p1.y },
        { p2.x, p2.y },
        { p3.x, p3.y },
        { p4.x, p4.y },
    };

    HPEN pen = NULL;
    if (line_thickness == 1) {
        FUNC6(dc, color);
    } else {
        pen = FUNC0(PS_SOLID, line_thickness, color);
        FUNC4(dc, pen);
    }

    FUNC5(dc, OPAQUE);
    FUNC3(dc, p, 4);

    if (pen) {
        FUNC4(dc, FUNC2(DC_PEN));
        FUNC1(pen);
    }
}
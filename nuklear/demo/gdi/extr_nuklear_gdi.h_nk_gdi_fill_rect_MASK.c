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
struct nk_color {int dummy; } ;
struct TYPE_3__ {short member_0; short member_1; short member_2; short member_3; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  ETO_OPAQUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,short,short,short,short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nk_color) ; 

__attribute__((used)) static void
FUNC6(HDC dc, short x, short y, unsigned short w,
    unsigned short h, unsigned short r, struct nk_color col)
{
    COLORREF color = FUNC5(col);

    if (r == 0) {
        RECT rect = { x, y, x + w, y + h };
        FUNC2(dc, color);
        FUNC0(dc, 0, 0, ETO_OPAQUE, &rect, NULL, 0, NULL);
    } else {
        FUNC4(dc, color);
        FUNC3(dc, color);
        FUNC1(dc, x, y, x + w, y + h, r, r);
    }
}
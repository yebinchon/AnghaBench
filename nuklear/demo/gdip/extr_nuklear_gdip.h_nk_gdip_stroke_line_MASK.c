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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,short,short,short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nk_color) ; 
 TYPE_1__ gdip ; 

__attribute__((used)) static void
FUNC4(short x0, short y0, short x1,
    short y1, unsigned int line_thickness, struct nk_color col)
{
    FUNC2(gdip.pen, (REAL)line_thickness);
    FUNC1(gdip.pen, FUNC3(col));
    FUNC0(gdip.memory, gdip.pen, x0, y0, x1, y1);
}
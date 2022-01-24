#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nk_vec2i {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct nk_color {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  brush; int /*<<< orphan*/  memory; } ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ POINT ;

/* Variables and functions */
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_POINTS ; 
 int /*<<< orphan*/  FUNC2 (struct nk_color) ; 
 TYPE_2__ gdip ; 

__attribute__((used)) static void
FUNC3(const struct nk_vec2i *pnts, int count, struct nk_color col)
{
    int i = 0;
    #define MAX_POINTS 64
    POINT points[MAX_POINTS];
    FUNC1(gdip.brush, FUNC2(col));
    for (i = 0; i < count && i < MAX_POINTS; ++i) {
        points[i].x = pnts[i].x;
        points[i].y = pnts[i].y;
    }
    FUNC0(gdip.memory, gdip.brush, points, i, FillModeAlternate);
    #undef MAX_POINTS
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_10__ {int* tileColorMap; int /*<<< orphan*/  trueColor; struct TYPE_10__* tile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

void FUNC6 (gdImagePtr im, gdImagePtr tile)
{
	int i;
	im->tile = tile;
	if (!im->trueColor && !im->tile->trueColor) {
		for (i = 0; i < FUNC3(tile); i++) {
			int index;
			index = FUNC2(im, FUNC5(tile, i), FUNC4(tile, i), FUNC1(tile, i), FUNC0(tile, i));
			im->tileColorMap[i] = index;
		}
	}
}
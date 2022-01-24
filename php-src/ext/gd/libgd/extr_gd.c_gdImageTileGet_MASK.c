#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_12__ {scalar_t__ trueColor; } ;
struct TYPE_11__ {TYPE_3__* tile; scalar_t__ trueColor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13 (gdImagePtr im, int x, int y)
{
	int srcx, srcy;
	int tileColor,p;
	if (!im->tile) {
		return -1;
	}
	srcx = x % FUNC6(im->tile);
	srcy = y % FUNC7(im->tile);
	p = FUNC3(im->tile, srcx, srcy);

	if (im->trueColor) {
		if (im->tile->trueColor) {
			tileColor = p;
		} else {
			tileColor = FUNC8( FUNC5(im->tile,p), FUNC4(im->tile,p), FUNC1 (im->tile,p), FUNC0 (im->tile,p));
		}
	} else {
		if (im->tile->trueColor) {
			tileColor = FUNC2(im, FUNC12 (p), FUNC11 (p), FUNC10 (p), FUNC9 (p));
		} else {
			tileColor = p;
			tileColor = FUNC2(im, FUNC5 (im->tile,p), FUNC4 (im->tile,p), FUNC1 (im->tile,p), FUNC0 (im->tile,p));
		}
	}
	return tileColor;
}
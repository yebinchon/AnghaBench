#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_4__ {int /*<<< orphan*/ ** tpixels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  gdAlphaOpaque ; 
 int FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) inline static void FUNC6(gdImagePtr im, int x, int y, int color, int t)
{
	int dr,dg,db,p,r,g,b;
	dr = FUNC5(color);
	dg = FUNC4(color);
	db = FUNC3(color);

	p = FUNC1(im,x,y);
	r = FUNC5(p);
	g = FUNC4(p);
	b = FUNC3(p);

	FUNC0(t, dr, r, dr);
	FUNC0(t, dg, g, dg);
	FUNC0(t, db, b, db);
	im->tpixels[y][x]=FUNC2(dr, dg, db,  gdAlphaOpaque);
}
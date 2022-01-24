#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_12__ {int sy; int sx; int alphaBlendingFlag; int transparent; scalar_t__ trueColor; } ;
typedef  int (* FuncPtr ) (gdImagePtr,int,int) ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int FUNC3 (gdImagePtr,int,int) ; 
 int FUNC4 (gdImagePtr,int,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int) ; 
 int FUNC9 (int,int,int,int) ; 

gdImagePtr FUNC10 (gdImagePtr src, int ignoretransparent)
{
	int uY, uX;
	int c,r,g,b,a;
	gdImagePtr dst;
	typedef int (*FuncPtr)(gdImagePtr, int, int);
	FuncPtr f;

	if (src->trueColor) {
		f = gdImageGetTrueColorPixel;
	} else {
		f = gdImageGetPixel;
	}
	dst = FUNC2(src->sy, src->sx);

	if (dst != NULL) {
		int old_blendmode = dst->alphaBlendingFlag;
		dst->alphaBlendingFlag = 0;

		dst->transparent = src->transparent;

		FUNC6 (dst, src);

		for (uY = 0; uY<src->sy; uY++) {
			for (uX = 0; uX<src->sx; uX++) {
				c = f (src, uX, uY);
				if (!src->trueColor) {
					r = FUNC7(src,c);
					g = FUNC5(src,c);
					b = FUNC1(src,c);
					a = FUNC0(src,c);
					c = FUNC9(r, g, b, a);
				}
				if (ignoretransparent && c == dst->transparent) {
					FUNC8(dst, uY, (dst->sy - uX - 1), dst->transparent);
				} else {
					FUNC8(dst, uY, (dst->sy - uX - 1), c);
				}
			}
		}
		dst->alphaBlendingFlag = old_blendmode;
	}

	return dst;
}
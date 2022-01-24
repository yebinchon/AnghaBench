#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_11__ {int sy; int transparent; scalar_t__ trueColor; } ;
typedef  int (* FuncPtr ) (gdImagePtr,int,int) ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int,int,int,int) ; 
 int FUNC3 (TYPE_1__*,int,int,int,int) ; 
 int FUNC4 (gdImagePtr,int,int) ; 
 int FUNC5 (gdImagePtr,int,int) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int) ; 

void FUNC9 (gdImagePtr dst, gdImagePtr src, int uCol, int iOffset, double dWeight, int clrBack, int ignoretransparent)
{
	typedef int (*FuncPtr)(gdImagePtr, int, int);
	int i, iYPos=0, r, g, b, a;
	FuncPtr f;
	int pxlOldLeft, pxlLeft=0, pxlSrc;

	if (src->trueColor) {
		f = gdImageGetTrueColorPixel;
	} else {
		f = gdImageGetPixel;
	}

	for (i = 0; i<=iOffset; i++) {
		FUNC8 (dst, uCol, i, clrBack);
	}
	r = (int)((double)FUNC7(src,clrBack) * dWeight);
	g = (int)((double)FUNC6(src,clrBack) * dWeight);
	b = (int)((double)FUNC1(src,clrBack) * dWeight);
	a = (int)((double)FUNC0(src,clrBack) * dWeight);

	pxlOldLeft = FUNC2(dst, r, g, b, a);

	for (i = 0; i < src->sy; i++) {
		pxlSrc = f (src, uCol, i);
		iYPos = i + iOffset;

		r = (int)((double)FUNC7(src,pxlSrc) * dWeight);
		g = (int)((double)FUNC6(src,pxlSrc) * dWeight);
		b = (int)((double)FUNC1(src,pxlSrc) * dWeight);
		a = (int)((double)FUNC0(src,pxlSrc) * dWeight);

		pxlLeft = FUNC2(src, r, g, b, a);

		if (pxlLeft == -1) {
			pxlLeft = FUNC3(src, r, g, b, a);
		}

		r = FUNC7(src,pxlSrc) - (FUNC7(src,pxlLeft) - FUNC7(src,pxlOldLeft));
		g = FUNC6(src,pxlSrc) - (FUNC6(src,pxlLeft) - FUNC6(src,pxlOldLeft));
		b = FUNC1(src,pxlSrc) - (FUNC1(src,pxlLeft) - FUNC1(src,pxlOldLeft));
		a = FUNC0(src,pxlSrc) - (FUNC0(src,pxlLeft) - FUNC0(src,pxlOldLeft));

		if (r>255) {
        		r = 255;
		}

		if (g>255) {
			g = 255;
		}

		if (b>255) {
    			b = 255;
		}

		if (a>127) {
			a = 127;
		}

		if (ignoretransparent && pxlSrc == dst->transparent) {
			pxlSrc = dst->transparent;
		} else {
			pxlSrc = FUNC2(dst, r, g, b, a);

			if (pxlSrc == -1) {
				pxlSrc = FUNC3(dst, r, g, b, a);
			}
		}

		if ((iYPos >= 0) && (iYPos < dst->sy)) {
			FUNC8 (dst, uCol, iYPos, pxlSrc);
		}

		pxlOldLeft = pxlLeft;
	}

	i = iYPos;
	if (i < dst->sy) {
		FUNC8 (dst, uCol, i, pxlLeft);
	}

	i--;
	while (++i < dst->sy) {
		FUNC8 (dst, uCol, i, clrBack);
	}
}
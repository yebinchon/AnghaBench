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
struct TYPE_11__ {int sx; int transparent; scalar_t__ trueColor; } ;
typedef  int (* FuncPtr ) (gdImagePtr,int,int) ;

/* Variables and functions */
 double FUNC0 (TYPE_1__*,int) ; 
 double FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int,int,int,int) ; 
 int FUNC3 (TYPE_1__*,int,int,int,int) ; 
 int FUNC4 (gdImagePtr,int,int) ; 
 int FUNC5 (gdImagePtr,int,int) ; 
 double FUNC6 (TYPE_1__*,int) ; 
 double FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int) ; 
 int FUNC9 (int,int,int,int) ; 

void FUNC10 (gdImagePtr dst, gdImagePtr src, int uRow, int iOffset, double dWeight, int clrBack, int ignoretransparent)
{
	typedef int (*FuncPtr)(gdImagePtr, int, int);
	int i, r, g, b, a, clrBackR, clrBackG, clrBackB, clrBackA;
	FuncPtr f;

	int pxlOldLeft, pxlLeft=0, pxlSrc;

	/* Keep clrBack as color index if required */
	if (src->trueColor) {
		pxlOldLeft = clrBack;
		f = gdImageGetTrueColorPixel;
	} else {
		pxlOldLeft = clrBack;
		clrBackR = FUNC7(src, clrBack);
		clrBackG = FUNC6(src, clrBack);
		clrBackB = FUNC1(src, clrBack);
		clrBackA = FUNC0(src, clrBack);
		clrBack =  FUNC9(clrBackR, clrBackG, clrBackB, clrBackA);
		f = gdImageGetPixel;
	}

	for (i = 0; i < iOffset; i++) {
		FUNC8 (dst, i, uRow, clrBack);
	}

	if (i < dst->sx) {
		FUNC8 (dst, i, uRow, clrBack);
	}

	for (i = 0; i < src->sx; i++) {
		pxlSrc = f (src,i,uRow);

		r = (int)(FUNC7(src,pxlSrc) * dWeight);
		g = (int)(FUNC6(src,pxlSrc) * dWeight);
		b = (int)(FUNC1(src,pxlSrc) * dWeight);
		a = (int)(FUNC0(src,pxlSrc) * dWeight);

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

		if ((i + iOffset >= 0) && (i + iOffset < dst->sx)) {
			FUNC8 (dst, i+iOffset, uRow,  pxlSrc);
		}

		pxlOldLeft = pxlLeft;
	}

	i += iOffset;

	if (i < dst->sx) {
		FUNC8 (dst, i, uRow, pxlLeft);
	}

	FUNC8 (dst, iOffset, uRow, clrBack);

	i--;

	while (++i < dst->sx) {
		FUNC8 (dst, i, uRow, clrBack);
	}
}
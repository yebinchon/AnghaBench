#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_6__ {int* style; int stylePos; int styleLength; int AA_color; int** tpixels; int** pixels; int /*<<< orphan*/  alphaBlendingFlag; int /*<<< orphan*/  trueColor; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
#define  gdAntiAliased 137 
#define  gdBrushed 136 
#define  gdEffectAlphaBlend 135 
#define  gdEffectMultiply 134 
#define  gdEffectNormal 133 
#define  gdEffectOverlay 132 
#define  gdEffectReplace 131 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
#define  gdStyled 130 
#define  gdStyledBrushed 129 
#define  gdTiled 128 
 int gdTransparent ; 

void FUNC6 (gdImagePtr im, int x, int y, int color)
{
	int p;
	switch (color) {
		case gdStyled:
			if (!im->style) {
				/* Refuse to draw if no style is set. */
				return;
			} else {
				p = im->style[im->stylePos++];
			}
			if (p != gdTransparent) {
				FUNC6(im, x, y, p);
			}
			im->stylePos = im->stylePos % im->styleLength;
			break;
		case gdStyledBrushed:
			if (!im->style) {
				/* Refuse to draw if no style is set. */
				return;
			}
			p = im->style[im->stylePos++];
			if (p != gdTransparent && p != 0) {
				FUNC6(im, x, y, gdBrushed);
			}
			im->stylePos = im->stylePos % im->styleLength;
			break;
		case gdBrushed:
			FUNC2(im, x, y);
			break;
		case gdTiled:
			FUNC3(im, x, y);
			break;
		case gdAntiAliased:
			/* This shouldn't happen (2.0.26) because we just call
			  gdImageAALine now, but do something sane. */
			FUNC6(im, x, y, im->AA_color);
			break;
		default:
			if (FUNC1(im, x, y)) {
				if (im->trueColor) {
					switch (im->alphaBlendingFlag) {
						default:
						case gdEffectReplace:
							im->tpixels[y][x] = color;
							break;
						case gdEffectAlphaBlend:
						case gdEffectNormal:
							im->tpixels[y][x] = FUNC0(im->tpixels[y][x], color);
							break;
						case gdEffectOverlay :
							im->tpixels[y][x] = FUNC5(im->tpixels[y][x], color);
							break;
						case gdEffectMultiply :
							im->tpixels[y][x] = FUNC4(im->tpixels[y][x], color);
							break;
					}
				} else {
					im->pixels[y][x] = color;
				}
			}
			break;
	}
}
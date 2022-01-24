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
typedef  size_t uint32 ;
typedef  size_t int32 ;
struct TYPE_3__ {size_t* Y_tab; size_t* Cr_r_tab; int* Cb_g_tab; int* Cr_g_tab; size_t* Cb_b_tab; } ;
typedef  TYPE_1__ TIFFYCbCrToRGB ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (size_t,int) ; 
 int SHIFT ; 

void
FUNC2(TIFFYCbCrToRGB *ycbcr, uint32 Y, int32 Cb, int32 Cr,
	       uint32 *r, uint32 *g, uint32 *b)
{
	int32 i;

	/* XXX: Only 8-bit YCbCr input supported for now */
	Y = FUNC1(Y, 255);
	Cb = FUNC0(Cb, 0, 255);
	Cr = FUNC0(Cr, 0, 255);

	i = ycbcr->Y_tab[Y] + ycbcr->Cr_r_tab[Cr];
	*r = FUNC0(i, 0, 255);
	i = ycbcr->Y_tab[Y]
	    + (int)((ycbcr->Cb_g_tab[Cb] + ycbcr->Cr_g_tab[Cr]) >> SHIFT);
	*g = FUNC0(i, 0, 255);
	i = ycbcr->Y_tab[Y] + ycbcr->Cb_b_tab[Cb];
	*b = FUNC0(i, 0, 255);
}
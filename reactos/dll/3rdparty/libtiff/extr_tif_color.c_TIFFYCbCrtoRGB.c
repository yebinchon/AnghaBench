
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32 ;
typedef size_t int32 ;
struct TYPE_3__ {size_t* Y_tab; size_t* Cr_r_tab; int* Cb_g_tab; int* Cr_g_tab; size_t* Cb_b_tab; } ;
typedef TYPE_1__ TIFFYCbCrToRGB ;


 size_t CLAMP (size_t,int ,int) ;
 size_t HICLAMP (size_t,int) ;
 int SHIFT ;

void
TIFFYCbCrtoRGB(TIFFYCbCrToRGB *ycbcr, uint32 Y, int32 Cb, int32 Cr,
        uint32 *r, uint32 *g, uint32 *b)
{
 int32 i;


 Y = HICLAMP(Y, 255);
 Cb = CLAMP(Cb, 0, 255);
 Cr = CLAMP(Cr, 0, 255);

 i = ycbcr->Y_tab[Y] + ycbcr->Cr_r_tab[Cr];
 *r = CLAMP(i, 0, 255);
 i = ycbcr->Y_tab[Y]
     + (int)((ycbcr->Cb_g_tab[Cb] + ycbcr->Cr_g_tab[Cr]) >> SHIFT);
 *g = CLAMP(i, 0, 255);
 i = ycbcr->Y_tab[Y] + ycbcr->Cb_b_tab[Cb];
 *b = CLAMP(i, 0, 255);
}

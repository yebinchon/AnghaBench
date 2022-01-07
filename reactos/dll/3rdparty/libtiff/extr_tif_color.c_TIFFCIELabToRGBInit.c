
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {double d_gammaR; int d_YCR; int d_Y0R; float d_Vrwr; double d_gammaG; float d_Vrwg; double d_gammaB; float d_Vrwb; } ;
struct TYPE_4__ {int range; int rstep; float* Yr2r; int gstep; float* Yg2g; int bstep; float* Yb2b; float X0; float Y0; float Z0; TYPE_2__ display; } ;
typedef int TIFFDisplay ;
typedef TYPE_1__ TIFFCIELabToRGB ;


 int CIELABTORGB_TABLE_RANGE ;
 int _TIFFmemcpy (TYPE_2__*,int const*,int) ;
 scalar_t__ pow (double,double) ;

int
TIFFCIELabToRGBInit(TIFFCIELabToRGB* cielab,
      const TIFFDisplay *display, float *refWhite)
{
 int i;
 double dfGamma;

 cielab->range = CIELABTORGB_TABLE_RANGE;

 _TIFFmemcpy(&cielab->display, display, sizeof(TIFFDisplay));


 dfGamma = 1.0 / cielab->display.d_gammaR ;
 cielab->rstep =
  (cielab->display.d_YCR - cielab->display.d_Y0R) / cielab->range;
 for(i = 0; i <= cielab->range; i++) {
  cielab->Yr2r[i] = cielab->display.d_Vrwr
      * ((float)pow((double)i / cielab->range, dfGamma));
 }


 dfGamma = 1.0 / cielab->display.d_gammaG ;
 cielab->gstep =
     (cielab->display.d_YCR - cielab->display.d_Y0R) / cielab->range;
 for(i = 0; i <= cielab->range; i++) {
  cielab->Yg2g[i] = cielab->display.d_Vrwg
      * ((float)pow((double)i / cielab->range, dfGamma));
 }


 dfGamma = 1.0 / cielab->display.d_gammaB ;
 cielab->bstep =
     (cielab->display.d_YCR - cielab->display.d_Y0R) / cielab->range;
 for(i = 0; i <= cielab->range; i++) {
  cielab->Yb2b[i] = cielab->display.d_Vrwb
      * ((float)pow((double)i / cielab->range, dfGamma));
 }


 cielab->X0 = refWhite[0];
 cielab->Y0 = refWhite[1];
 cielab->Z0 = refWhite[2];

 return 0;
}

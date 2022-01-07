
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float R; float G; float B; } ;
typedef TYPE_1__ RGBType ;
typedef int HWBType ;


 int HWB_UNDEFINED ;
 float MAX3 (float,float,float) ;
 float MIN3 (float,float,float) ;
 int RETURN_HWB (int,float,float) ;

__attribute__((used)) static HWBType * RGB_to_HWB (RGBType RGB, HWBType * HWB)
{





 float R = RGB.R, G = RGB.G, B = RGB.B, w, v, b, f;
 int i;

 w = MIN3 (R, G, B);
 v = MAX3 (R, G, B);
 b = 1 - v;
 if (v == w) {
  RETURN_HWB(HWB_UNDEFINED, w, b);
 }
 f = (R == w) ? G - B : ((G == w) ? B - R : R - G);
 i = (R == w) ? 3 : ((G == w) ? 5 : 1);

 RETURN_HWB(i - f / (v - w), w, b);
}

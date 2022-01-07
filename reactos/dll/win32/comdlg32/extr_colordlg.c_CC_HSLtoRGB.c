
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int COLORREF ;


 int RGB (int,int,int) ;
 int hsl_to_x (int,int,int) ;

__attribute__((used)) static COLORREF CC_HSLtoRGB(int hue, int sat, int lum)
{
 int h, r, g, b;


 h = hue > 80 ? hue-80 : hue+160;
 r = hsl_to_x(h, sat, lum);

 h = hue > 160 ? hue-160 : hue+80;
 g = hsl_to_x(h, sat, lum);

 b = hsl_to_x(hue, sat, lum);

 return RGB(r, g, b);
}

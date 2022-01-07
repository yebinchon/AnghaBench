
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int min (int,int) ;

__attribute__((used)) static int hsl_to_x(int hue, int sat, int lum)
{
 int res = 0, maxrgb;


 maxrgb = (256 * min(120,lum)) / 120;
 if (hue < 80)
  res = 0;
 else
  if (hue < 120)
  {
   res = (hue - 80) * maxrgb;
   res /= 40;
  }
  else
   if (hue < 200)
    res = maxrgb;
   else
    {
     res= (240 - hue) * maxrgb;
     res /= 40;
    }
 res = res - maxrgb / 2;


 res = maxrgb / 2 + (sat * res) / 240;


 if (lum > 120 && res < 256)
  res += ((lum - 120) * (256 - res)) / 120;

 return min(res, 255);
}

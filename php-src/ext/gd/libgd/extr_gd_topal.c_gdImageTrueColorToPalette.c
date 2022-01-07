
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdImageTrueColorToPaletteBody (int ,int,int,int ) ;

int gdImageTrueColorToPalette (gdImagePtr im, int dither, int colorsWanted)
{
 return gdImageTrueColorToPaletteBody(im, dither, colorsWanted, 0);
}

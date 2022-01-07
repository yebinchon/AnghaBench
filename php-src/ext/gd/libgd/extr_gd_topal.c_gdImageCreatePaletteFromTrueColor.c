
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gdImagePtr ;


 scalar_t__ TRUE ;
 scalar_t__ gdImageTrueColorToPaletteBody (int *,int,int,int **) ;

gdImagePtr gdImageCreatePaletteFromTrueColor (gdImagePtr im, int dither, int colorsWanted)
{
 gdImagePtr nim;
 if (TRUE == gdImageTrueColorToPaletteBody(im, dither, colorsWanted, &nim)) {
  return nim;
 }
 return ((void*)0);
}

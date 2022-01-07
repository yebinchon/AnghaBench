
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_4__ {unsigned char** pixels; int sx; int sy; int transparent; int thick; int* open; int cx2; int cy2; int interpolation_id; int * interpolation; void* res_y; void* res_x; scalar_t__ cy1; scalar_t__ cx1; scalar_t__ tpixels; scalar_t__ trueColor; scalar_t__* blue; scalar_t__* green; scalar_t__* red; scalar_t__ AA; scalar_t__ interlace; scalar_t__ colorsTotal; scalar_t__ style; scalar_t__ tile; scalar_t__ brush; scalar_t__ polyAllocated; scalar_t__ polyInts; } ;
typedef TYPE_1__ gdImage ;


 int GD_BILINEAR_FIXED ;
 void* GD_RESOLUTION ;
 scalar_t__ gdCalloc (int,int) ;
 scalar_t__ gdMalloc (int) ;
 int gdMaxColors ;
 scalar_t__ overflow2 (int,int) ;

gdImagePtr gdImageCreate (int sx, int sy)
{
 int i;
 gdImagePtr im;

 if (overflow2(sx, sy)) {
  return ((void*)0);
 }
 if (overflow2(sizeof(unsigned char *), sy)) {
  return ((void*)0);
 }
 if (overflow2(sizeof(unsigned char), sx)) {
  return ((void*)0);
 }

 im = (gdImage *) gdCalloc(1, sizeof(gdImage));


 im->pixels = (unsigned char **) gdMalloc(sizeof(unsigned char *) * sy);
 im->polyInts = 0;
 im->polyAllocated = 0;
 im->brush = 0;
 im->tile = 0;
 im->style = 0;
 for (i = 0; i < sy; i++) {

  im->pixels[i] = (unsigned char *) gdCalloc(sx, sizeof(unsigned char));
 }
 im->sx = sx;
 im->sy = sy;
 im->colorsTotal = 0;
 im->transparent = (-1);
 im->interlace = 0;
 im->thick = 1;
 im->AA = 0;
 for (i = 0; i < gdMaxColors; i++) {
  im->open[i] = 1;
  im->red[i] = 0;
  im->green[i] = 0;
  im->blue[i] = 0;
 }
 im->trueColor = 0;
 im->tpixels = 0;
 im->cx1 = 0;
 im->cy1 = 0;
 im->cx2 = im->sx - 1;
 im->cy2 = im->sy - 1;
 im->res_x = GD_RESOLUTION;
 im->res_y = GD_RESOLUTION;
 im->interpolation = ((void*)0);
 im->interpolation_id = GD_BILINEAR_FIXED;
 return im;
}

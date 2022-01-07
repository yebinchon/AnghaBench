
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_22__ {scalar_t__ trueColor; int saveAlphaFlag; int interpolation_id; int sy; int sx; int alphaBlendingFlag; int transparent; int * alpha; int * blue; int * green; int * red; } ;




 int GD_METHOD_COUNT ;

 scalar_t__ floorf (float const) ;
 int fmod (int,int) ;
 int gdEffectReplace ;
 int gdImageCopy (TYPE_1__*,TYPE_1__* const,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* gdImageCreateTrueColor (int ,int ) ;
 int gdImagePaletteToTrueColor (TYPE_1__* const) ;
 TYPE_1__* gdImageRotate180 (TYPE_1__* const,int ) ;
 TYPE_1__* gdImageRotate270 (TYPE_1__* const,int ) ;
 TYPE_1__* gdImageRotate90 (TYPE_1__* const,int ) ;
 TYPE_1__* gdImageRotateBicubicFixed (TYPE_1__* const,float const,int) ;
 TYPE_1__* gdImageRotateBilinear (TYPE_1__* const,float const,int) ;
 TYPE_1__* gdImageRotateGeneric (TYPE_1__* const,float const,int) ;
 TYPE_1__* gdImageRotateNearestNeighbour (TYPE_1__* const,float const,int) ;
 int gdMaxColors ;
 int gdTrueColorAlpha (int ,int ,int ,int ) ;

gdImagePtr gdImageRotateInterpolated(const gdImagePtr src, const float angle, int bgcolor)
{



 const int angle_rounded = fmod((int) floorf(angle * 100), 360 * 100);

 if (bgcolor < 0) {
  return ((void*)0);
 }




 if (src->trueColor == 0) {
  if (bgcolor < gdMaxColors) {
   bgcolor = gdTrueColorAlpha(src->red[bgcolor], src->green[bgcolor], src->blue[bgcolor], src->alpha[bgcolor]);
  }
  gdImagePaletteToTrueColor(src);
 }


 switch (angle_rounded) {
  case 0: {
   gdImagePtr dst = gdImageCreateTrueColor(src->sx, src->sy);
   if (dst == ((void*)0)) {
    return ((void*)0);
   }
   dst->transparent = src->transparent;
   dst->saveAlphaFlag = 1;
   dst->alphaBlendingFlag = gdEffectReplace;

   gdImageCopy(dst, src, 0,0,0,0,src->sx,src->sy);
   return dst;
  }
  case -27000:
  case 9000:
   return gdImageRotate90(src, 0);
  case -18000:
  case 18000:
   return gdImageRotate180(src, 0);
  case -9000:
  case 27000:
   return gdImageRotate270(src, 0);
 }

 if (src == ((void*)0) || src->interpolation_id < 1 || src->interpolation_id > GD_METHOD_COUNT) {
  return ((void*)0);
 }

 switch (src->interpolation_id) {
  case 128:
   return gdImageRotateNearestNeighbour(src, angle, bgcolor);
   break;

  case 129:
   return gdImageRotateBilinear(src, angle, bgcolor);
   break;

  case 130:
   return gdImageRotateBicubicFixed(src, angle, bgcolor);
   break;

  default:
   return gdImageRotateGeneric(src, angle, bgcolor);
 }
 return ((void*)0);
}

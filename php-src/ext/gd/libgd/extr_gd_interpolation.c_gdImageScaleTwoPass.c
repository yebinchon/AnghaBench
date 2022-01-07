
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_12__ {int interpolation_id; int trueColor; } ;


 int _gdScaleHoriz (TYPE_1__* const,unsigned int const,unsigned int const,TYPE_1__*,unsigned int const,unsigned int const) ;
 int _gdScaleVert (TYPE_1__*,unsigned int const,unsigned int const,TYPE_1__*,unsigned int const,unsigned int const) ;
 TYPE_1__* gdImageCreateTrueColor (unsigned int const,unsigned int const) ;
 int gdImageDestroy (TYPE_1__*) ;
 int gdImagePaletteToTrueColor (TYPE_1__* const) ;
 int gdImageSetInterpolationMethod (TYPE_1__*,int ) ;

gdImagePtr gdImageScaleTwoPass(const gdImagePtr src, const unsigned int src_width, const unsigned int src_height, const unsigned int new_width, const unsigned int new_height)
{
 gdImagePtr tmp_im;
 gdImagePtr dst;
 int scale_pass_res;

 if (new_width == 0 || new_height == 0) {
  return ((void*)0);
 }


 if (!src->trueColor) {
  gdImagePaletteToTrueColor(src);
 }

 tmp_im = gdImageCreateTrueColor(new_width, src_height);
 if (tmp_im == ((void*)0)) {
  return ((void*)0);
 }
 gdImageSetInterpolationMethod(tmp_im, src->interpolation_id);
 scale_pass_res = _gdScaleHoriz(src, src_width, src_height, tmp_im, new_width, src_height);
 if (scale_pass_res != 1) {
  gdImageDestroy(tmp_im);
  return ((void*)0);
 }

 dst = gdImageCreateTrueColor(new_width, new_height);
 if (dst == ((void*)0)) {
  gdImageDestroy(tmp_im);
  return ((void*)0);
 }
 gdImageSetInterpolationMethod(dst, src->interpolation_id);
 scale_pass_res = _gdScaleVert(tmp_im, new_width, src_height, dst, new_width, new_height);
 if (scale_pass_res != 1) {
  gdImageDestroy(dst);
  gdImageDestroy(tmp_im);
  return ((void*)0);
 }
 gdImageDestroy(tmp_im);

 return dst;
}

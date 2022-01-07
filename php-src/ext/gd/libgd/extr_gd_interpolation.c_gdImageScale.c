
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_12__ {int interpolation_id; int sy; int sx; int * interpolation; } ;




 int GD_METHOD_COUNT ;

 TYPE_1__* gdImageScaleBicubicFixed (TYPE_1__* const,unsigned int const,unsigned int const) ;
 TYPE_1__* gdImageScaleBilinear (TYPE_1__* const,unsigned int const,unsigned int const) ;
 TYPE_1__* gdImageScaleNearestNeighbour (TYPE_1__* const,unsigned int const,unsigned int const) ;
 TYPE_1__* gdImageScaleTwoPass (TYPE_1__* const,int ,int ,unsigned int const,unsigned int const) ;

gdImagePtr gdImageScale(const gdImagePtr src, const unsigned int new_width, const unsigned int new_height)
{
 gdImagePtr im_scaled = ((void*)0);

 if (src == ((void*)0) || src->interpolation_id < 0 || src->interpolation_id > GD_METHOD_COUNT) {
  return ((void*)0);
 }

 if (new_width == 0 || new_height == 0) {
  return ((void*)0);
 }

 switch (src->interpolation_id) {

  case 128:
   im_scaled = gdImageScaleNearestNeighbour(src, new_width, new_height);
   break;

  case 129:
   im_scaled = gdImageScaleBilinear(src, new_width, new_height);
   break;

  case 130:
   im_scaled = gdImageScaleBicubicFixed(src, new_width, new_height);
   break;


  default:
   if (src->interpolation == ((void*)0)) {
    return ((void*)0);
   }
   im_scaled = gdImageScaleTwoPass(src, src->sx, src->sy, new_width, new_height);
   break;
 }
 return im_scaled;
}

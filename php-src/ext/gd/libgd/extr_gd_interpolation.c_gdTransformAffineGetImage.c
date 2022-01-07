
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_1__* gdRectPtr ;
struct TYPE_18__ {scalar_t__ y; scalar_t__ x; int height; int width; } ;
typedef TYPE_1__ gdRect ;
typedef TYPE_3__* gdImagePtr ;
struct TYPE_19__ {int saveAlphaFlag; int trueColor; } ;


 int GD_FALSE ;
 int GD_TRUE ;
 int gdAffineConcat (double*,double const*,double*) ;
 int gdAffineTranslate (double*,scalar_t__,scalar_t__) ;
 int gdImageAlphaBlending (TYPE_3__*,int ) ;
 TYPE_3__* gdImageCreateTrueColor (int ,int ) ;
 int gdImageDestroy (TYPE_3__*) ;
 int gdImagePaletteToTrueColor (TYPE_3__* const) ;
 int gdImageSX (TYPE_3__* const) ;
 int gdImageSY (TYPE_3__* const) ;
 int gdTransformAffineBoundingBox (TYPE_1__*,double const*,TYPE_1__*) ;
 int gdTransformAffineCopy (TYPE_3__*,int ,int ,TYPE_3__* const,TYPE_1__*,double*) ;

int gdTransformAffineGetImage(gdImagePtr *dst,
    const gdImagePtr src,
    gdRectPtr src_area,
    const double affine[6])
{
 int res;
 double m[6];
 gdRect bbox;
 gdRect area_full;

 if (src_area == ((void*)0)) {
  area_full.x = 0;
  area_full.y = 0;
  area_full.width = gdImageSX(src);
  area_full.height = gdImageSY(src);
  src_area = &area_full;
 }

 gdTransformAffineBoundingBox(src_area, affine, &bbox);

 *dst = gdImageCreateTrueColor(bbox.width, bbox.height);
 if (*dst == ((void*)0)) {
  return GD_FALSE;
 }
 (*dst)->saveAlphaFlag = 1;

 if (!src->trueColor) {
  gdImagePaletteToTrueColor(src);
 }


 gdAffineTranslate(m, -bbox.x, -bbox.y);
 gdAffineConcat(m, affine, m);

 gdImageAlphaBlending(*dst, 0);

 res = gdTransformAffineCopy(*dst,
    0,0,
    src,
    src_area,
    m);

 if (res != GD_TRUE) {
  gdImageDestroy(*dst);
  dst = ((void*)0);
  return GD_FALSE;
 } else {
  return GD_TRUE;
 }
}

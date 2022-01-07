
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gdRectPtr ;
struct TYPE_3__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ gdRect ;
typedef int gdImagePtr ;


 int GD_FALSE ;
 scalar_t__ GD_TRUE ;
 int gdAffineRotate (double*,float const) ;
 int gdImageSX (int ) ;
 int gdImageSY (int ) ;
 scalar_t__ gdTransformAffineBoundingBox (TYPE_1__*,double*,int ) ;

__attribute__((used)) static int gdRotatedImageSize(gdImagePtr src, const float angle, gdRectPtr bbox)
{
    gdRect src_area;
    double m[6];

    gdAffineRotate(m, angle);
    src_area.x = 0;
    src_area.y = 0;
    src_area.width = gdImageSX(src);
    src_area.height = gdImageSY(src);
    if (gdTransformAffineBoundingBox(&src_area, m, bbox) != GD_TRUE) {
        return GD_FALSE;
    }

    return GD_TRUE;
}

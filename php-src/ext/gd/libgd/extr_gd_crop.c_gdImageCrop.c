
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* gdRectPtr ;
typedef TYPE_2__* gdImagePtr ;
struct TYPE_13__ {int alphaBlendingFlag; } ;
struct TYPE_12__ {int height; int width; int y; int x; } ;


 int gdEffectReplace ;
 int gdImageAlphaBlending (TYPE_2__*,int) ;
 int gdImageCopy (TYPE_2__*,TYPE_2__*,int ,int ,int ,int ,int ,int ) ;
 TYPE_2__* gdImageCreate (int ,int ) ;
 TYPE_2__* gdImageCreateTrueColor (int ,int ) ;
 scalar_t__ gdImageTrueColor (TYPE_2__*) ;

gdImagePtr gdImageCrop(gdImagePtr src, const gdRectPtr crop)
{
 gdImagePtr dst;
 int alphaBlendingFlag;

 if (gdImageTrueColor(src)) {
  dst = gdImageCreateTrueColor(crop->width, crop->height);
 } else {
  dst = gdImageCreate(crop->width, crop->height);
 }
 if (!dst) return ((void*)0);
 alphaBlendingFlag = dst->alphaBlendingFlag;
 gdImageAlphaBlending(dst, gdEffectReplace);
 gdImageCopy(dst, src, 0, 0, crop->x, crop->y, crop->width, crop->height);
 gdImageAlphaBlending(dst, alphaBlendingFlag);

 return dst;
}

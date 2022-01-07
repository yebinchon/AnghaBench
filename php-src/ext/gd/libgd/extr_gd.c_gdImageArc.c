
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdImageFilledArc (int ,int,int,int,int,int,int,int,int ) ;
 int gdNoFill ;

void gdImageArc (gdImagePtr im, int cx, int cy, int w, int h, int s, int e, int color)
{
 gdImageFilledArc(im, cx, cy, w, h, s, e, color, gdNoFill);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int _gdImageFilledVRectangle (int ,int,int,int,int,int) ;

void gdImageFilledRectangle (gdImagePtr im, int x1, int y1, int x2, int y2, int color)
{
 _gdImageFilledVRectangle(im, x1, y1, x2, y2, color);
}

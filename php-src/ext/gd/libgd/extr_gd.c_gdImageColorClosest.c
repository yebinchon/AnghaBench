
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdAlphaOpaque ;
 int gdImageColorClosestAlpha (int ,int,int,int,int ) ;

int gdImageColorClosest (gdImagePtr im, int r, int g, int b)
{
 return gdImageColorClosestAlpha (im, r, g, b, gdAlphaOpaque);
}

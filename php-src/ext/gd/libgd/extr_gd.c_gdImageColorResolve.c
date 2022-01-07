
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdAlphaOpaque ;
 int gdImageColorResolveAlpha (int ,int,int,int,int ) ;

int gdImageColorResolve (gdImagePtr im, int r, int g, int b)
{
 return gdImageColorResolveAlpha(im, r, g, b, gdAlphaOpaque);
}

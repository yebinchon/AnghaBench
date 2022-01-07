
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;


 int gdAlphaOpaque ;
 int gdImageColorAllocateAlpha (int ,int,int,int,int ) ;

int gdImageColorAllocate (gdImagePtr im, int r, int g, int b)
{
 return gdImageColorAllocateAlpha (im, r, g, b, gdAlphaOpaque);
}

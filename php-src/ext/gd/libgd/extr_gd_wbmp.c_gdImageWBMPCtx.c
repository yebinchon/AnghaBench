
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdImagePtr ;
typedef int gdIOCtx ;


 int _gdImageWBMPCtx (int ,int,int *) ;

void gdImageWBMPCtx (gdImagePtr image, int fg, gdIOCtx * out)
{
 _gdImageWBMPCtx(image, fg, out);
}

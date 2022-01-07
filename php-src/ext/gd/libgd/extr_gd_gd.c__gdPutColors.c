
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtx ;
struct TYPE_3__ {unsigned char trueColor; scalar_t__* alpha; scalar_t__* blue; scalar_t__* green; scalar_t__* red; int transparent; int colorsTotal; } ;


 int gdMaxColors ;
 int gdPutC (unsigned char,int *) ;
 int gdPutInt (int ,int *) ;
 int gdPutWord (int ,int *) ;

void _gdPutColors (gdImagePtr im, gdIOCtx * out)
{
 int i;

 gdPutC(im->trueColor, out);
 if (!im->trueColor) {
  gdPutWord(im->colorsTotal, out);
 }
 gdPutInt(im->transparent, out);
 if (!im->trueColor) {
  for (i = 0; i < gdMaxColors; i++) {
   gdPutC((unsigned char) im->red[i], out);
   gdPutC((unsigned char) im->green[i], out);
   gdPutC((unsigned char) im->blue[i], out);
   gdPutC((unsigned char) im->alpha[i], out);
  }
 }
}

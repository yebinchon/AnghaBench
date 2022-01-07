
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtx ;
struct TYPE_4__ {int sy; int sx; scalar_t__** pixels; int ** tpixels; scalar_t__ trueColor; } ;


 int _gdPutHeader (TYPE_1__*,int *) ;
 int gdPutC (unsigned char,int *) ;
 int gdPutInt (int ,int *) ;

__attribute__((used)) static void _gdImageGd (gdImagePtr im, gdIOCtx * out)
{
 int x, y;

 _gdPutHeader(im, out);

 for (y = 0; y < im->sy; y++) {
  for (x = 0; x < im->sx; x++) {

   if (im->trueColor) {
    gdPutInt(im->tpixels[y][x], out);
   } else {
    gdPutC((unsigned char) im->pixels[y][x], out);
   }
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtx ;
struct TYPE_3__ {int sx; int sy; } ;


 scalar_t__* GD2_ID ;
 int GD2_VERS ;
 int gdPutC (unsigned char,int *) ;
 int gdPutWord (int,int *) ;

__attribute__((used)) static void _gd2PutHeader (gdImagePtr im, gdIOCtx * out, int cs, int fmt, int cx, int cy)
{
 int i;


 for (i = 0; i < 4; i++) {
  gdPutC((unsigned char) (GD2_ID[i]), out);
 }



 gdPutWord(GD2_VERS, out);
 gdPutWord(im->sx, out);
 gdPutWord(im->sy, out);
 gdPutWord(cs, out);
 gdPutWord(fmt, out);
 gdPutWord(cx, out);
 gdPutWord(cy, out);
}

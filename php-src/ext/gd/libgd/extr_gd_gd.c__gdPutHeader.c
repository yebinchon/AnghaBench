
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtx ;
struct TYPE_4__ {int sx; int sy; scalar_t__ trueColor; } ;


 int _gdPutColors (TYPE_1__*,int *) ;
 int gdPutWord (int,int *) ;

__attribute__((used)) static void _gdPutHeader (gdImagePtr im, gdIOCtx * out)
{



 if (im->trueColor) {
  gdPutWord(65534, out);
 } else {
  gdPutWord(65535, out);
 }
 gdPutWord(im->sx, out);
 gdPutWord(im->sy, out);

 _gdPutColors(im, out);
}

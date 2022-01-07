
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtxPtr ;
struct TYPE_3__ {int* red; int* green; int* blue; int* open; } ;


 int gdGetByte (int*,int ) ;

__attribute__((used)) static int bmp_read_palette(gdImagePtr im, gdIOCtxPtr infile, int count, int read_four)
{
 int i;
 int r, g, b, z;

 for (i = 0; i < count; i++) {
  if (
      !gdGetByte(&b, infile) ||
      !gdGetByte(&g, infile) ||
      !gdGetByte(&r, infile) ||
      (read_four && !gdGetByte(&z, infile))
  ) {
   return 1;
  }
  im->red[i] = r;
  im->green[i] = g;
  im->blue[i] = b;
  im->open[i] = 1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtxPtr ;
struct TYPE_12__ {int enctype; int numcolors; scalar_t__ type; int width; int height; int topdown; } ;
typedef TYPE_2__ bmp_info_t ;
struct TYPE_13__ {scalar_t__ off; } ;
typedef TYPE_3__ bmp_hdr_t ;
struct TYPE_11__ {int colorsTotal; int * open; } ;




 scalar_t__ BMP_PALETTE_4 ;
 scalar_t__ bmp_read_palette (TYPE_1__*,int ,int,int) ;
 int bmp_read_rle (TYPE_1__*,int ,TYPE_2__*) ;
 int gdGetByte (int*,int ) ;
 int gdImageSetPixel (TYPE_1__*,int,int,int) ;
 int gdSeek (int ,scalar_t__) ;
 scalar_t__ gdTell (int ) ;

__attribute__((used)) static int bmp_read_8bit(gdImagePtr im, gdIOCtxPtr infile, bmp_info_t *info, bmp_hdr_t *header)
{
 int ypos = 0, xpos = 0, row = 0, index = 0;
 int padding = 0;

 if (info->enctype != 129 && info->enctype != 128) {
  return 1;
 }

 if (!info->numcolors) {
  info->numcolors = 256;
 } else if (info->numcolors < 0 || info->numcolors > 256) {
  return 1;
 }

 if (bmp_read_palette(im, infile, info->numcolors, (info->type == BMP_PALETTE_4))) {
  return 1;
 }

 im->colorsTotal = info->numcolors;


 if (gdTell(infile) != header->off) {

  if (!gdSeek(infile, header->off)) {
   return 1;
  }
 }


 padding = (1 * info->width) % 4;
 if (padding) {
  padding = 4 - padding;
 }

 switch (info->enctype) {
 case 129:
  for (ypos = 0; ypos < info->height; ++ypos) {
   if (info->topdown) {
    row = ypos;
   } else {
    row = info->height - ypos - 1;
   }

   for (xpos = 0; xpos < info->width; ++xpos) {
    if (!gdGetByte(&index, infile)) {
     return 1;
    }

    if (im->open[index]) {
     im->open[index] = 0;
    }
    gdImageSetPixel(im, xpos, row, index);
   }

   for (xpos = padding; xpos > 0; --xpos) {
    if (!gdGetByte(&index, infile)) {
     return 1;
    }
   }
  }
  break;

 case 128:
  if (bmp_read_rle(im, infile, info)) {
   return 1;
  }
  break;

 default:
  return 1;
 }
 return 0;
}

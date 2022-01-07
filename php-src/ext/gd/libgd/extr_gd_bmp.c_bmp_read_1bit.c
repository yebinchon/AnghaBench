
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtxPtr ;
struct TYPE_10__ {scalar_t__ enctype; int numcolors; scalar_t__ type; int width; int height; scalar_t__ topdown; } ;
typedef TYPE_2__ bmp_info_t ;
struct TYPE_11__ {scalar_t__ off; } ;
typedef TYPE_3__ bmp_hdr_t ;
struct TYPE_9__ {int colorsTotal; scalar_t__* open; } ;


 scalar_t__ BMP_BI_RGB ;
 scalar_t__ BMP_PALETTE_4 ;
 scalar_t__ bmp_read_palette (TYPE_1__*,int ,int,int) ;
 int gdGetByte (int*,int ) ;
 int gdImageSetPixel (TYPE_1__*,int,int,int) ;
 int gdSeek (int ,scalar_t__) ;
 scalar_t__ gdTell (int ) ;

__attribute__((used)) static int bmp_read_1bit(gdImagePtr im, gdIOCtxPtr infile, bmp_info_t *info, bmp_hdr_t *header)
{
 int ypos = 0, xpos = 0, row = 0, index = 0;
 int padding = 0, current_byte = 0, bit = 0;

 if (info->enctype != BMP_BI_RGB) {
  return 1;
 }

 if (!info->numcolors) {
  info->numcolors = 2;
 } else if (info->numcolors < 0 || info->numcolors > 2) {
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


 padding = (info->width + 7) / 8 % 4;
 if (padding) {
  padding = 4 - padding;
 }

 for (ypos = 0; ypos < info->height; ++ypos) {
  if (info->topdown) {
   row = ypos;
  } else {
   row = info->height - ypos - 1;
  }

  for (xpos = 0; xpos < info->width; xpos += 8) {

   if (!gdGetByte(&current_byte, infile)) {
    return 1;
   }

   for (bit = 0; bit < 8; bit++) {
    index = ((current_byte & (0x80 >> bit)) != 0 ? 0x01 : 0x00);
    if (im->open[index]) {
     im->open[index] = 0;
    }
    gdImageSetPixel(im, xpos + bit, row, index);

    if ((xpos + bit) >= info->width) {
     break;
    }
   }
  }

  for (xpos = padding; xpos > 0; --xpos) {
   if (!gdGetByte(&index, infile)) {
    return 1;
   }
  }
 }
 return 0;
}

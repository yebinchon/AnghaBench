
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gdImagePtr ;
typedef int gdIOCtxPtr ;
struct TYPE_5__ {int enctype; int depth; int width; int height; scalar_t__ topdown; } ;
typedef TYPE_1__ bmp_info_t ;
struct TYPE_6__ {scalar_t__ off; } ;
typedef TYPE_2__ bmp_hdr_t ;
 int BMP_DEBUG (int ) ;
 int gdGetByte (int*,int ) ;
 int gdGetWordLSB (short*,int ) ;
 int gdImageSetPixel (int ,int,int,int ) ;
 int gdSeek (int ,scalar_t__) ;
 scalar_t__ gdTell (int ) ;
 int gdTrueColor (int,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int bmp_read_direct(gdImagePtr im, gdIOCtxPtr infile, bmp_info_t *info, bmp_hdr_t *header)
{
 int ypos = 0, xpos = 0, row = 0;
 int padding = 0, alpha = 0, red = 0, green = 0, blue = 0;
 signed short int data = 0;

 switch(info->enctype) {
 case 130:

  break;

 case 133:
  if (info->depth == 24) {
   BMP_DEBUG(printf("Bitfield compression isn't supported for 24-bit\n"));
   return 1;
  }
  BMP_DEBUG(printf("Currently no bitfield support\n"));
  return 1;
  break;

 case 128:
  if (info->depth != 8) {
   BMP_DEBUG(printf("RLE is only valid for 8-bit images\n"));
   return 1;
  }
  break;
 case 129:
  if (info->depth != 4) {
   BMP_DEBUG(printf("RLE is only valid for 4-bit images\n"));
   return 1;
  }
  break;
 case 132:
 case 131:
 default:
  BMP_DEBUG(printf("Unsupported BMP compression format\n"));
  return 1;
 }


 if (gdTell(infile) != header->off) {

  if (!gdSeek(infile, header->off)) {
   return 1;
  }
 }


 padding = ((int)(info->depth / 8) * info->width) % 4;
 if (padding) {
  padding = 4 - padding;
 }


 for (ypos = 0; ypos < info->height; ++ypos) {
  if (info->topdown) {
   row = ypos;
  } else {
   row = info->height - ypos - 1;
  }

  for (xpos = 0; xpos < info->width; xpos++) {
   if (info->depth == 16) {
    if (!gdGetWordLSB(&data, infile)) {
     return 1;
    }
    BMP_DEBUG(printf("Data: %X\n", data));
    red = ((data & 0x7C00) >> 10) << 3;
    green = ((data & 0x3E0) >> 5) << 3;
    blue = (data & 0x1F) << 3;
    BMP_DEBUG(printf("R: %d, G: %d, B: %d\n", red, green, blue));
   } else if (info->depth == 24) {
    if (!gdGetByte(&blue, infile) || !gdGetByte(&green, infile) || !gdGetByte(&red, infile)) {
     return 1;
    }
   } else {
    if (!gdGetByte(&blue, infile) || !gdGetByte(&green, infile) || !gdGetByte(&red, infile) || !gdGetByte(&alpha, infile)) {
     return 1;
    }
   }

   gdImageSetPixel(im, xpos, row, gdTrueColor(red, green, blue));
  }
  for (xpos = padding; xpos > 0; --xpos) {
   if (!gdGetByte(&red, infile)) {
    return 1;
   }
  }
 }

 return 0;
}

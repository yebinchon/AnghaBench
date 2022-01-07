
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gdIOCtxPtr ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ height; short numplanes; short depth; int numcolors; int type; scalar_t__ topdown; } ;
typedef TYPE_1__ bmp_info_t ;


 int BMP_PALETTE_3 ;
 int gdGetWordLSB (short*,int ) ;

__attribute__((used)) static int bmp_read_os2_v1_info(gdIOCtxPtr infile, bmp_info_t *info)
{
 if (
     !gdGetWordLSB((signed short int *)&info->width, infile) ||
     !gdGetWordLSB((signed short int *)&info->height, infile) ||
     !gdGetWordLSB(&info->numplanes, infile) ||
     !gdGetWordLSB(&info->depth, infile)
 ) {
  return 1;
 }


 info->topdown = 0;

 info->numcolors = 1 << info->depth;
 info->type = BMP_PALETTE_3;

 if (info->width <= 0 || info->height <= 0 || info->numplanes <= 0 ||
         info->depth <= 0 || info->numcolors < 0) {
  return 1;
 }

 return 0;
}

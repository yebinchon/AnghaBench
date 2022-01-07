
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gdIOCtxPtr ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ height; scalar_t__ numplanes; scalar_t__ depth; scalar_t__ enctype; scalar_t__ size; scalar_t__ hres; scalar_t__ vres; scalar_t__ numcolors; scalar_t__ mincolors; int topdown; int type; } ;
typedef TYPE_1__ bmp_info_t ;


 int BMP_PALETTE_4 ;
 int gdGetIntLSB (scalar_t__*,int ) ;
 int gdGetWordLSB (scalar_t__*,int ) ;

__attribute__((used)) static int bmp_read_windows_v3_info(gdIOCtxPtr infile, bmp_info_t *info)
{
 if (
     !gdGetIntLSB(&info->width, infile) ||
     !gdGetIntLSB(&info->height, infile) ||
     !gdGetWordLSB(&info->numplanes, infile) ||
     !gdGetWordLSB(&info->depth, infile) ||
     !gdGetIntLSB(&info->enctype, infile) ||
     !gdGetIntLSB(&info->size, infile) ||
     !gdGetIntLSB(&info->hres, infile) ||
     !gdGetIntLSB(&info->vres, infile) ||
     !gdGetIntLSB(&info->numcolors, infile) ||
     !gdGetIntLSB(&info->mincolors, infile)
 ) {
  return 1;
 }

 if (info->height < 0) {
  info->topdown = 1;
  info->height = -info->height;
 } else {
  info->topdown = 0;
 }

 info->type = BMP_PALETTE_4;

 if (info->width <= 0 || info->height <= 0 || info->numplanes <= 0 ||
         info->depth <= 0 || info->numcolors < 0 || info->mincolors < 0) {
  return 1;
 }

 return 0;
}

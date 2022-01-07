
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int gdIOCtx ;
struct TYPE_6__ {int len; } ;
typedef TYPE_1__ bmp_info_t ;


 int BMP_DEBUG (int ) ;





 int bmp_read_os2_v1_info (int *,TYPE_1__*) ;
 int bmp_read_os2_v2_info (int *,TYPE_1__*) ;
 int bmp_read_windows_v3_info (int *,TYPE_1__*) ;
 int gdGetIntLSB (int*,int *) ;
 int printf (char*) ;

__attribute__((used)) static int bmp_read_info(gdIOCtx *infile, bmp_info_t *info)
{

 if (!gdGetIntLSB(&info->len, infile)) {
  return 1;
 }

 switch (info->len) {

 case 130:
 case 129:
 case 128:
  BMP_DEBUG(printf("Reading Windows Header\n"));
  if (bmp_read_windows_v3_info(infile, info)) {
   return 1;
  }
  break;
 case 132:
  if (bmp_read_os2_v1_info(infile, info)) {
   return 1;
  }
  break;
 case 131:
  if (bmp_read_os2_v2_info(infile, info)) {
   return 1;
  }
  break;
 default:
  BMP_DEBUG(printf("Unhandled bitmap\n"));
  return 1;
 }
 return 0;
}

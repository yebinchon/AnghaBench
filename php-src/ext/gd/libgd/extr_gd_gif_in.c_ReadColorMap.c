
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rgb ;
typedef int gdIOCtx ;


 size_t CM_BLUE ;
 size_t CM_GREEN ;
 size_t CM_RED ;
 int FALSE ;
 int ReadOK (int *,unsigned char*,int) ;
 int TRUE ;

__attribute__((used)) static int ReadColorMap(gdIOCtx *fd, int number, unsigned char (*buffer)[256])
{
 int i;
 unsigned char rgb[3];


 for (i = 0; i < number; ++i) {
  if (! ReadOK(fd, rgb, sizeof(rgb))) {
   return TRUE;
  }
  buffer[CM_RED][i] = rgb[0] ;
  buffer[CM_GREEN][i] = rgb[1] ;
  buffer[CM_BLUE][i] = rgb[2] ;
 }


 return FALSE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtx ;
struct TYPE_4__ {unsigned char* red; unsigned char* green; unsigned char* blue; int* open; int colorsTotal; } ;
typedef int LZW_STATIC_DATA ;


 size_t CM_BLUE ;
 size_t CM_GREEN ;
 size_t CM_RED ;
 int FALSE ;
 int LWZReadByte (int *,int *,int ,unsigned char,int*) ;
 unsigned char MAX_LWZ_BITS ;
 int ReadOK (int *,unsigned char*,int) ;
 int TRUE ;
 int gdImageSetPixel (TYPE_1__*,int,int,int) ;
 int gdMaxColors ;

__attribute__((used)) static void
ReadImage(gdImagePtr im, gdIOCtx *fd, int len, int height, unsigned char (*cmap)[256], int interlace, int *ZeroDataBlockP)
{
 unsigned char c;
 int v;
 int xpos = 0, ypos = 0, pass = 0;
 int i;
 LZW_STATIC_DATA sd;





 if (! ReadOK(fd,&c,1)) {
  return;
 }

 if (c > MAX_LWZ_BITS) {
  return;
 }


 for (i=0; (i<gdMaxColors); i++) {
  im->red[i] = cmap[CM_RED][i];
  im->green[i] = cmap[CM_GREEN][i];
  im->blue[i] = cmap[CM_BLUE][i];
  im->open[i] = 1;
 }

 im->colorsTotal = gdMaxColors;
 if (LWZReadByte(fd, &sd, TRUE, c, ZeroDataBlockP) < 0) {
  return;
 }
 while ((v = LWZReadByte(fd, &sd, FALSE, c, ZeroDataBlockP)) >= 0) {
  if (v >= gdMaxColors) {
   v = 0;
  }

  if (im->open[v]) {
   im->open[v] = 0;
  }
  gdImageSetPixel(im, xpos, ypos, v);
  ++xpos;
  if (xpos == len) {
   xpos = 0;
   if (interlace) {
    switch (pass) {
     case 0:
     case 1:
      ypos += 8; break;
     case 2:
      ypos += 4; break;
     case 3:
      ypos += 2; break;
    }

    if (ypos >= height) {
     ++pass;
     switch (pass) {
      case 1:
       ypos = 4; break;
      case 2:
       ypos = 2; break;
      case 3:
       ypos = 1; break;
      default:
       goto fini;
     }
    }
   } else {
    ++ypos;
   }
  }
  if (ypos >= height)
   break;
 }

fini:
 if (LWZReadByte(fd, &sd, FALSE, c, ZeroDataBlockP) >=0) {

 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdIOCtxPtr ;
struct TYPE_7__ {int colorsTotal; scalar_t__* open; void* interlace; } ;


 void* BitSet (unsigned char,int ) ;
 int DoExtension (int ,unsigned char,int*,int*) ;
 int FALSE ;
 int INTERLACE ;
 int LM_to_uint (unsigned char,unsigned char) ;
 int LOCALCOLORMAP ;
 int MAXCOLORMAPSIZE ;
 scalar_t__ ReadColorMap (int ,int,unsigned char**) ;
 int ReadImage (TYPE_1__*,int ,int,int,unsigned char**,void*,int*) ;
 int ReadOK (int ,unsigned char*,int) ;
 scalar_t__ VERBOSE ;
 int gdImageColorTransparent (TYPE_1__*,int) ;
 TYPE_1__* gdImageCreate (int,int) ;
 int gdImageDestroy (TYPE_1__*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (unsigned char**,int ,int) ;
 int printf (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

gdImagePtr gdImageCreateFromGifCtx(gdIOCtxPtr fd)
{
 int BitPixel;





 int Transparent = (-1);
 unsigned char buf[16];
 unsigned char c;
 unsigned char ColorMap[3][MAXCOLORMAPSIZE];
 unsigned char localColorMap[3][MAXCOLORMAPSIZE];
 int imw, imh, screen_width, screen_height;
 int useGlobalColormap;
 int bitPixel;
 int i;


 int ZeroDataBlock = FALSE;
 int haveGlobalColormap;
 gdImagePtr im = 0;

 memset(ColorMap, 0, 3 * MAXCOLORMAPSIZE);
 memset(localColorMap, 0, 3 * MAXCOLORMAPSIZE);


 if (! ReadOK(fd,buf,6)) {
  return 0;
 }
 if (strncmp((char *)buf,"GIF",3) != 0) {
  return 0;
 }

 if (memcmp((char *)buf+3, "87a", 3) == 0) {

 } else if (memcmp((char *)buf+3, "89a", 3) == 0) {

 } else {
  return 0;
 }

 if (! ReadOK(fd,buf,7)) {
  return 0;
 }

 BitPixel = 2<<(buf[4]&0x07);





 screen_width = imw = LM_to_uint(buf[0],buf[1]);
 screen_height = imh = LM_to_uint(buf[2],buf[3]);

 haveGlobalColormap = BitSet(buf[4], LOCALCOLORMAP);
 if (haveGlobalColormap) {
  if (ReadColorMap(fd, BitPixel, ColorMap)) {
   return 0;
  }
 }

 for (;;) {
  int top, left;
  int width, height;

  if (! ReadOK(fd,&c,1)) {
   return 0;
  }
  if (c == ';') {
   goto terminated;
  }

  if (c == '!') {
   if (! ReadOK(fd,&c,1)) {
    return 0;
   }
   DoExtension(fd, c, &Transparent, &ZeroDataBlock);
   continue;
  }

  if (c != ',') {
   continue;
  }



  if (! ReadOK(fd,buf,9)) {
   return 0;
  }

  useGlobalColormap = ! BitSet(buf[8], LOCALCOLORMAP);

  bitPixel = 1<<((buf[8]&0x07)+1);
  left = LM_to_uint(buf[0], buf[1]);
  top = LM_to_uint(buf[2], buf[3]);
  width = LM_to_uint(buf[4], buf[5]);
  height = LM_to_uint(buf[6], buf[7]);

  if (left + width > screen_width || top + height > screen_height) {
   if (VERBOSE) {
    printf("Frame is not confined to screen dimension.\n");
   }
   return 0;
  }

  if (!(im = gdImageCreate(width, height))) {
   return 0;
  }
  im->interlace = BitSet(buf[8], INTERLACE);
  if (!useGlobalColormap) {
   if (ReadColorMap(fd, bitPixel, localColorMap)) {
    gdImageDestroy(im);
    return 0;
   }
   ReadImage(im, fd, width, height, localColorMap,
     BitSet(buf[8], INTERLACE), &ZeroDataBlock);
  } else {
   if (!haveGlobalColormap) {
    gdImageDestroy(im);
    return 0;
   }
   ReadImage(im, fd, width, height,
      ColorMap,
      BitSet(buf[8], INTERLACE), &ZeroDataBlock);
  }
  if (Transparent != (-1)) {
   gdImageColorTransparent(im, Transparent);
  }
  goto terminated;
 }

terminated:

 if (!im) {
  return 0;
 }



 for (i=((im->colorsTotal-1)); (i>=0); i--) {
  if (im->open[i]) {
   im->colorsTotal--;
  } else {
   break;
  }
 }
 if (!im->colorsTotal) {
  gdImageDestroy(im);
  return 0;
 }
 return im;
}

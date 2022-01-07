
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int * gdImagePtr ;
typedef int gdIOCtxPtr ;
struct TYPE_14__ {int magic; int numcolors; int width; int height; int numplanes; int depth; int off; } ;
typedef TYPE_1__ bmp_info_t ;
typedef TYPE_1__ bmp_hdr_t ;


 int BMP_DEBUG (int ) ;
 int bmp_read_1bit (int *,int ,TYPE_1__*,TYPE_1__*) ;
 int bmp_read_4bit (int *,int ,TYPE_1__*,TYPE_1__*) ;
 int bmp_read_8bit (int *,int ,TYPE_1__*,TYPE_1__*) ;
 int bmp_read_direct (int *,int ,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ bmp_read_header (int ,TYPE_1__*) ;
 scalar_t__ bmp_read_info (int ,TYPE_1__*) ;
 scalar_t__ gdCalloc (int,int) ;
 int gdFree (TYPE_1__*) ;
 int * gdImageCreate (int,int) ;
 int * gdImageCreateTrueColor (int,int) ;
 int gdImageDestroy (int *) ;
 int printf (char*,...) ;

gdImagePtr gdImageCreateFromBmpCtx(gdIOCtxPtr infile)
{
 bmp_hdr_t *hdr;
 bmp_info_t *info;
 gdImagePtr im = ((void*)0);
 int error = 0;

 if (!(hdr= (bmp_hdr_t *)gdCalloc(1, sizeof(bmp_hdr_t)))) {
  return ((void*)0);
 }

 if (bmp_read_header(infile, hdr)) {
  gdFree(hdr);
  return ((void*)0);
 }

 if (hdr->magic != 0x4d42) {
  gdFree(hdr);
  return ((void*)0);
 }

 if (!(info = (bmp_info_t *)gdCalloc(1, sizeof(bmp_info_t)))) {
  gdFree(hdr);
  return ((void*)0);
 }

 if (bmp_read_info(infile, info)) {
  gdFree(hdr);
  gdFree(info);
  return ((void*)0);
 }

 BMP_DEBUG(printf("Numcolours: %d\n", info->numcolors));
 BMP_DEBUG(printf("Width: %d\n", info->width));
 BMP_DEBUG(printf("Height: %d\n", info->height));
 BMP_DEBUG(printf("Planes: %d\n", info->numplanes));
 BMP_DEBUG(printf("Depth: %d\n", info->depth));
 BMP_DEBUG(printf("Offset: %d\n", hdr->off));

 if (info->depth >= 16) {
  im = gdImageCreateTrueColor(info->width, info->height);
 } else {
  im = gdImageCreate(info->width, info->height);
 }

 if (!im) {
  gdFree(hdr);
  gdFree(info);
  return ((void*)0);
 }

 switch (info->depth) {
 case 1:
  BMP_DEBUG(printf("1-bit image\n"));
  error = bmp_read_1bit(im, infile, info, hdr);
  break;
 case 4:
  BMP_DEBUG(printf("4-bit image\n"));
  error = bmp_read_4bit(im, infile, info, hdr);
  break;
 case 8:
  BMP_DEBUG(printf("8-bit image\n"));
  error = bmp_read_8bit(im, infile, info, hdr);
  break;
 case 16:
 case 24:
 case 32:
  BMP_DEBUG(printf("Direct BMP image\n"));
  error = bmp_read_direct(im, infile, info, hdr);
  break;
 default:
  BMP_DEBUG(printf("Unknown bit count\n"));
  error = 1;
 }

 gdFree(hdr);
 gdFree(info);

 if (error) {
  gdImageDestroy(im);
  return ((void*)0);
 }

 return im;
}

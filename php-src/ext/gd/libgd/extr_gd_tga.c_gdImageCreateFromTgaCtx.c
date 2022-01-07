
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int* bitmap; int width; int height; scalar_t__ bits; scalar_t__ fliph; scalar_t__ flipv; scalar_t__ alphabits; int * ident; } ;
typedef TYPE_1__ oTga ;
typedef TYPE_2__* gdImagePtr ;
typedef int gdIOCtx ;
struct TYPE_14__ {int** tpixels; } ;


 scalar_t__ TGA_BPP_24 ;
 scalar_t__ TGA_BPP_32 ;
 int free_tga (TYPE_1__*) ;
 scalar_t__ gdAlphaMax ;
 int gdImageAlphaBlending (TYPE_2__* volatile,int ) ;
 TYPE_2__* gdImageCreateTrueColor (int,int) ;
 int gdImageFlipBoth (TYPE_2__* volatile) ;
 int gdImageFlipHorizontal (TYPE_2__* volatile) ;
 int gdImageFlipVertical (TYPE_2__* volatile) ;
 int gdImageSaveAlpha (TYPE_2__* volatile,int) ;
 scalar_t__ gdMalloc (int) ;
 int gdTrueColor (int,int,int) ;
 int gdTrueColorAlpha (int,int,int,scalar_t__) ;
 scalar_t__ read_header_tga (int *,TYPE_1__*) ;
 scalar_t__ read_image_tga (int *,TYPE_1__*) ;

gdImagePtr gdImageCreateFromTgaCtx(gdIOCtx* ctx)
{
 int bitmap_caret = 0;
 oTga *tga = ((void*)0);


 volatile gdImagePtr image = ((void*)0);
 int x = 0;
 int y = 0;

 tga = (oTga *) gdMalloc(sizeof(oTga));
 if (!tga) {
  return ((void*)0);
 }

 tga->bitmap = ((void*)0);
 tga->ident = ((void*)0);

 if (read_header_tga(ctx, tga) < 0) {
  free_tga(tga);
  return ((void*)0);
 }






 if (read_image_tga(ctx, tga) < 0) {
  free_tga(tga);
  return ((void*)0);
 }

 image = gdImageCreateTrueColor((int)tga->width, (int)tga->height );

 if (image == 0) {
  free_tga( tga );
  return ((void*)0);
 }





 if (tga->alphabits) {
  gdImageAlphaBlending(image, 0);
  gdImageSaveAlpha(image, 1);
 }


 for (y = 0; y < tga->height; y++) {
  register int *tpix = image->tpixels[y];
  for ( x = 0; x < tga->width; x++, tpix++) {
   if (tga->bits == TGA_BPP_24) {
    *tpix = gdTrueColor(tga->bitmap[bitmap_caret + 2], tga->bitmap[bitmap_caret + 1], tga->bitmap[bitmap_caret]);
    bitmap_caret += 3;
   } else if (tga->bits == TGA_BPP_32 && tga->alphabits) {
    register int a = tga->bitmap[bitmap_caret + 3];

    *tpix = gdTrueColorAlpha(tga->bitmap[bitmap_caret + 2], tga->bitmap[bitmap_caret + 1], tga->bitmap[bitmap_caret], gdAlphaMax - (a >> 1));
    bitmap_caret += 4;
   }
  }
 }

 if (tga->flipv && tga->fliph) {
  gdImageFlipBoth(image);
 } else if (tga->flipv) {
  gdImageFlipVertical(image);
 } else if (tga->fliph) {
  gdImageFlipHorizontal(image);
 }

 free_tga(tga);

 return image;
}

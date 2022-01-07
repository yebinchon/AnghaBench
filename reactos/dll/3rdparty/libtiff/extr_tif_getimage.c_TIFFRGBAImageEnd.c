
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bluecmap; int * greencmap; int * redcmap; int * Bitdepth16To8; int * UaToAa; int * cielab; int * ycbcr; int * PALmap; int * BWmap; int * Map; } ;
typedef TYPE_1__ TIFFRGBAImage ;


 int _TIFFfree (int *) ;

void
TIFFRGBAImageEnd(TIFFRGBAImage* img)
{
 if (img->Map) {
  _TIFFfree(img->Map);
  img->Map = ((void*)0);
 }
 if (img->BWmap) {
  _TIFFfree(img->BWmap);
  img->BWmap = ((void*)0);
 }
 if (img->PALmap) {
  _TIFFfree(img->PALmap);
  img->PALmap = ((void*)0);
 }
 if (img->ycbcr) {
  _TIFFfree(img->ycbcr);
  img->ycbcr = ((void*)0);
 }
 if (img->cielab) {
  _TIFFfree(img->cielab);
  img->cielab = ((void*)0);
 }
 if (img->UaToAa) {
  _TIFFfree(img->UaToAa);
  img->UaToAa = ((void*)0);
 }
 if (img->Bitdepth16To8) {
  _TIFFfree(img->Bitdepth16To8);
  img->Bitdepth16To8 = ((void*)0);
 }

 if( img->redcmap ) {
  _TIFFfree( img->redcmap );
  _TIFFfree( img->greencmap );
  _TIFFfree( img->bluecmap );
                img->redcmap = img->greencmap = img->bluecmap = ((void*)0);
 }
}

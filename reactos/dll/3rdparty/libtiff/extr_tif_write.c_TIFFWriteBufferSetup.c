
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int tmsize_t ;
struct TYPE_5__ {int tif_flags; int tif_tilesize; int tif_rawdatasize; int * tif_rawdata; int * tif_rawcp; scalar_t__ tif_rawcc; int tif_clientdata; } ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFStripSize (TYPE_1__*) ;
 int TIFF_BUFFERSETUP ;
 int TIFF_MYBUFFER ;
 int _TIFFfree (int *) ;
 void* _TIFFmalloc (int) ;
 scalar_t__ isTiled (TYPE_1__*) ;

int
TIFFWriteBufferSetup(TIFF* tif, void* bp, tmsize_t size)
{
 static const char module[] = "TIFFWriteBufferSetup";

 if (tif->tif_rawdata) {
  if (tif->tif_flags & TIFF_MYBUFFER) {
   _TIFFfree(tif->tif_rawdata);
   tif->tif_flags &= ~TIFF_MYBUFFER;
  }
  tif->tif_rawdata = ((void*)0);
 }
 if (size == (tmsize_t)(-1)) {
  size = (isTiled(tif) ?
      tif->tif_tilesize : TIFFStripSize(tif));



  if (size < 8*1024)
   size = 8*1024;
  bp = ((void*)0);
 }
 if (bp == ((void*)0)) {
  bp = _TIFFmalloc(size);
  if (bp == ((void*)0)) {
   TIFFErrorExt(tif->tif_clientdata, module, "No space for output buffer");
   return (0);
  }
  tif->tif_flags |= TIFF_MYBUFFER;
 } else
  tif->tif_flags &= ~TIFF_MYBUFFER;
 tif->tif_rawdata = (uint8*) bp;
 tif->tif_rawdatasize = size;
 tif->tif_rawcc = 0;
 tif->tif_rawcp = tif->tif_rawdata;
 tif->tif_flags |= TIFF_BUFFERSETUP;
 return (1);
}

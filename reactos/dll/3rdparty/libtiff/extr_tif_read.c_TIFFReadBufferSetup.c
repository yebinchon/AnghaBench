
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint64 ;
typedef void* tmsize_t ;
struct TYPE_3__ {int tif_flags; scalar_t__ tif_rawdatasize; scalar_t__ tif_row; int tif_clientdata; int * tif_rawdata; } ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*,...) ;
 int TIFF_BUFFERMMAP ;
 int TIFF_MYBUFFER ;
 int TIFF_NOREADRAW ;
 scalar_t__ TIFFroundup_64 (int ,int) ;
 scalar_t__ _TIFFcalloc (int,scalar_t__) ;
 int _TIFFfree (int *) ;
 int assert (int) ;

int
TIFFReadBufferSetup(TIFF* tif, void* bp, tmsize_t size)
{
 static const char module[] = "TIFFReadBufferSetup";

 assert((tif->tif_flags&TIFF_NOREADRAW)==0);
 tif->tif_flags &= ~TIFF_BUFFERMMAP;

 if (tif->tif_rawdata) {
  if (tif->tif_flags & TIFF_MYBUFFER)
   _TIFFfree(tif->tif_rawdata);
  tif->tif_rawdata = ((void*)0);
  tif->tif_rawdatasize = 0;
 }
 if (bp) {
  tif->tif_rawdatasize = size;
  tif->tif_rawdata = (uint8*) bp;
  tif->tif_flags &= ~TIFF_MYBUFFER;
 } else {
  tif->tif_rawdatasize = (tmsize_t)TIFFroundup_64((uint64)size, 1024);
  if (tif->tif_rawdatasize==0) {
      TIFFErrorExt(tif->tif_clientdata, module,
     "Invalid buffer size");
      return (0);
  }


  tif->tif_rawdata = (uint8*) _TIFFcalloc(1, tif->tif_rawdatasize);
  tif->tif_flags |= TIFF_MYBUFFER;
 }
 if (tif->tif_rawdata == ((void*)0)) {
  TIFFErrorExt(tif->tif_clientdata, module,
      "No space for data buffer at scanline %lu",
      (unsigned long) tif->tif_row);
  tif->tif_rawdatasize = 0;
  return (0);
 }
 return (1);
}

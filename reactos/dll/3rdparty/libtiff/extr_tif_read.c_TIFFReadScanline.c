
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
struct TYPE_7__ {int (* tif_decoderow ) (TYPE_1__*,int *,int ,int ) ;int tif_scanlinesize; int (* tif_postdecode ) (TYPE_1__*,int *,int ) ;scalar_t__ tif_row; } ;
typedef TYPE_1__ TIFF ;


 int TIFFCheckRead (TYPE_1__*,int ) ;
 int TIFFSeek (TYPE_1__*,scalar_t__,int ) ;
 int stub1 (TYPE_1__*,int *,int ,int ) ;
 int stub2 (TYPE_1__*,int *,int ) ;

int
TIFFReadScanline(TIFF* tif, void* buf, uint32 row, uint16 sample)
{
 int e;

 if (!TIFFCheckRead(tif, 0))
  return (-1);
 if( (e = TIFFSeek(tif, row, sample)) != 0) {



  e = (*tif->tif_decoderow)
      (tif, (uint8*) buf, tif->tif_scanlinesize, sample);


  tif->tif_row = row + 1;

  if (e)
   (*tif->tif_postdecode)(tif, (uint8*) buf,
       tif->tif_scanlinesize);
 }
 return (e > 0 ? 1 : -1);
}

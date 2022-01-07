
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tif_flags; int (* tif_postencode ) (TYPE_1__*) ;} ;
typedef TYPE_1__ TIFF ;


 int TIFFFlushData1 (TYPE_1__*) ;
 int TIFF_BEENWRITING ;
 int TIFF_POSTENCODE ;
 int stub1 (TYPE_1__*) ;

int
TIFFFlushData(TIFF* tif)
{
 if ((tif->tif_flags & TIFF_BEENWRITING) == 0)
  return (1);
 if (tif->tif_flags & TIFF_POSTENCODE) {
  tif->tif_flags &= ~TIFF_POSTENCODE;
  if (!(*tif->tif_postencode)(tif))
   return (0);
 }
 return (TIFFFlushData1(tif));
}

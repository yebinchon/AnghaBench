
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_7__ {int td_fillorder; } ;
struct TYPE_8__ {scalar_t__ tif_rawcc; int tif_flags; scalar_t__ tif_rawdata; scalar_t__ tif_rawcp; int tif_curstrip; int tif_curtile; TYPE_1__ tif_dir; } ;
typedef TYPE_2__ TIFF ;


 int TIFFAppendToStrip (TYPE_2__*,int ,scalar_t__,scalar_t__) ;
 int TIFFReverseBits (int *,scalar_t__) ;
 int TIFF_BUF4WRITE ;
 int TIFF_NOBITREV ;
 int isFillOrder (TYPE_2__*,int ) ;
 scalar_t__ isTiled (TYPE_2__*) ;

int
TIFFFlushData1(TIFF* tif)
{
 if (tif->tif_rawcc > 0 && tif->tif_flags & TIFF_BUF4WRITE ) {
  if (!isFillOrder(tif, tif->tif_dir.td_fillorder) &&
      (tif->tif_flags & TIFF_NOBITREV) == 0)
   TIFFReverseBits((uint8*)tif->tif_rawdata,
       tif->tif_rawcc);
  if (!TIFFAppendToStrip(tif,
      isTiled(tif) ? tif->tif_curtile : tif->tif_curstrip,
      tif->tif_rawdata, tif->tif_rawcc))
        {



            tif->tif_rawcc = 0;
            tif->tif_rawcp = tif->tif_rawdata;
   return (0);
        }
  tif->tif_rawcc = 0;
  tif->tif_rawcp = tif->tif_rawdata;
 }
 return (1);
}

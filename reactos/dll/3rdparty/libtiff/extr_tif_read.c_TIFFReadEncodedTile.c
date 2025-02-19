
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void uint8 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
typedef scalar_t__ tmsize_t ;
struct TYPE_12__ {scalar_t__ td_nstrips; scalar_t__ td_compression; scalar_t__ td_stripsperimage; int td_fillorder; } ;
struct TYPE_13__ {scalar_t__ tif_tilesize; int tif_flags; int (* tif_postdecode ) (TYPE_2__*,void*,scalar_t__) ;scalar_t__ (* tif_decodetile ) (TYPE_2__*,void*,scalar_t__,int ) ;int tif_clientdata; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 scalar_t__ COMPRESSION_NONE ;
 int TIFFCheckRead (TYPE_2__*,int) ;
 int TIFFErrorExt (int ,char const*,char*,unsigned long,unsigned long) ;
 scalar_t__ TIFFFillTile (TYPE_2__*,scalar_t__) ;
 scalar_t__ TIFFReadRawTile1 (TYPE_2__*,scalar_t__,void*,scalar_t__,char const*) ;
 int TIFFReverseBits (void*,scalar_t__) ;
 int TIFF_NOBITREV ;
 int TIFF_NOREADRAW ;
 int isFillOrder (TYPE_2__*,int ) ;
 int isMapped (TYPE_2__*) ;
 int stub1 (TYPE_2__*,void*,scalar_t__) ;
 scalar_t__ stub2 (TYPE_2__*,void*,scalar_t__,int ) ;
 int stub3 (TYPE_2__*,void*,scalar_t__) ;

tmsize_t
TIFFReadEncodedTile(TIFF* tif, uint32 tile, void* buf, tmsize_t size)
{
 static const char module[] = "TIFFReadEncodedTile";
 TIFFDirectory *td = &tif->tif_dir;
 tmsize_t tilesize = tif->tif_tilesize;

 if (!TIFFCheckRead(tif, 1))
  return ((tmsize_t)(-1));
 if (tile >= td->td_nstrips) {
  TIFFErrorExt(tif->tif_clientdata, module,
      "%lu: Tile out of range, max %lu",
      (unsigned long) tile, (unsigned long) td->td_nstrips);
  return ((tmsize_t)(-1));
 }


    if( td->td_compression == COMPRESSION_NONE &&
        size!=(tmsize_t)(-1) && size >= tilesize &&
        !isMapped(tif) &&
        ((tif->tif_flags&TIFF_NOREADRAW)==0) )
    {
        if (TIFFReadRawTile1(tif, tile, buf, tilesize, module) != tilesize)
            return ((tmsize_t)(-1));

        if (!isFillOrder(tif, td->td_fillorder) &&
            (tif->tif_flags & TIFF_NOBITREV) == 0)
            TIFFReverseBits(buf,tilesize);

        (*tif->tif_postdecode)(tif,buf,tilesize);
        return (tilesize);
    }

 if (size == (tmsize_t)(-1))
  size = tilesize;
 else if (size > tilesize)
  size = tilesize;
 if (TIFFFillTile(tif, tile) && (*tif->tif_decodetile)(tif,
     (uint8*) buf, size, (uint16)(tile/td->td_stripsperimage))) {
  (*tif->tif_postdecode)(tif, (uint8*) buf, size);
  return (size);
 } else
  return ((tmsize_t)(-1));
}

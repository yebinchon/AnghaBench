
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint64 ;
typedef size_t uint32 ;
typedef scalar_t__ uint16 ;
typedef scalar_t__ tmsize_t ;
struct TYPE_15__ {size_t td_nstrips; scalar_t__* td_stripbytecount; size_t td_tilelength; size_t td_tilewidth; scalar_t__ td_compression; size_t td_stripsperimage; int td_fillorder; int td_imagewidth; int td_imagelength; } ;
struct TYPE_16__ {int tif_flags; size_t tif_curtile; scalar_t__ tif_rawdatasize; scalar_t__ tif_rawcc; size_t tif_row; size_t tif_col; scalar_t__ tif_tilesize; int * tif_rawdata; int * tif_rawcp; int (* tif_postencode ) (TYPE_2__*) ;int (* tif_encodetile ) (TYPE_2__*,int *,scalar_t__,scalar_t__) ;int (* tif_postdecode ) (TYPE_2__*,int *,scalar_t__) ;int (* tif_preencode ) (TYPE_2__*,scalar_t__) ;int (* tif_setupencode ) (TYPE_2__*) ;int tif_clientdata; scalar_t__ tif_curoff; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 int BUFFERCHECK (TYPE_2__*) ;
 scalar_t__ COMPRESSION_NONE ;
 int TIFFAppendToStrip (TYPE_2__*,size_t,int *,scalar_t__) ;
 int TIFFErrorExt (int ,char const*,char*,...) ;
 int TIFFReverseBits (int *,scalar_t__) ;
 int TIFFWriteBufferSetup (TYPE_2__*,int *,scalar_t__) ;
 int TIFF_BUF4WRITE ;
 int TIFF_CODERSETUP ;
 int TIFF_NOBITREV ;
 int TIFF_POSTENCODE ;
 size_t TIFFhowmany_32 (int ,size_t) ;
 scalar_t__ TIFFroundup_64 (int ,int) ;
 int WRITECHECKTILES (TYPE_2__*,char const*) ;
 int isFillOrder (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int *,scalar_t__) ;
 int stub3 (TYPE_2__*,scalar_t__) ;
 int stub4 (TYPE_2__*,int *,scalar_t__) ;
 int stub5 (TYPE_2__*,int *,scalar_t__,scalar_t__) ;
 int stub6 (TYPE_2__*) ;

tmsize_t
TIFFWriteEncodedTile(TIFF* tif, uint32 tile, void* data, tmsize_t cc)
{
 static const char module[] = "TIFFWriteEncodedTile";
 TIFFDirectory *td;
 uint16 sample;
        uint32 howmany32;

 if (!WRITECHECKTILES(tif, module))
  return ((tmsize_t)(-1));
 td = &tif->tif_dir;
 if (tile >= td->td_nstrips) {
  TIFFErrorExt(tif->tif_clientdata, module, "Tile %lu out of range, max %lu",
      (unsigned long) tile, (unsigned long) td->td_nstrips);
  return ((tmsize_t)(-1));
 }





 if (!BUFFERCHECK(tif))
  return ((tmsize_t)(-1));

        tif->tif_flags |= TIFF_BUF4WRITE;
 tif->tif_curtile = tile;

 if( td->td_stripbytecount[tile] > 0 )
        {




            if( tif->tif_rawdatasize <= (tmsize_t) td->td_stripbytecount[tile] )
            {
                if( !(TIFFWriteBufferSetup(tif, ((void*)0),
                    (tmsize_t)TIFFroundup_64((uint64)(td->td_stripbytecount[tile] + 1), 1024))) )
                    return ((tmsize_t)(-1));
            }



            tif->tif_curoff = 0;
        }

 tif->tif_rawcc = 0;
 tif->tif_rawcp = tif->tif_rawdata;





        howmany32=TIFFhowmany_32(td->td_imagelength, td->td_tilelength);
        if (howmany32 == 0) {
                 TIFFErrorExt(tif->tif_clientdata,module,"Zero tiles");
                return ((tmsize_t)(-1));
        }
 tif->tif_row = (tile % howmany32) * td->td_tilelength;
        howmany32=TIFFhowmany_32(td->td_imagewidth, td->td_tilewidth);
        if (howmany32 == 0) {
                 TIFFErrorExt(tif->tif_clientdata,module,"Zero tiles");
                return ((tmsize_t)(-1));
        }
 tif->tif_col = (tile % howmany32) * td->td_tilewidth;

 if ((tif->tif_flags & TIFF_CODERSETUP) == 0) {
  if (!(*tif->tif_setupencode)(tif))
   return ((tmsize_t)(-1));
  tif->tif_flags |= TIFF_CODERSETUP;
 }
 tif->tif_flags &= ~TIFF_POSTENCODE;






 if ( cc < 1 || cc > tif->tif_tilesize)
  cc = tif->tif_tilesize;


    if( td->td_compression == COMPRESSION_NONE )
    {

        tif->tif_postdecode( tif, (uint8*) data, cc );

        if (!isFillOrder(tif, td->td_fillorder) &&
            (tif->tif_flags & TIFF_NOBITREV) == 0)
            TIFFReverseBits((uint8*) data, cc);

        if (cc > 0 &&
            !TIFFAppendToStrip(tif, tile, (uint8*) data, cc))
            return ((tmsize_t) -1);
        return (cc);
    }

    sample = (uint16)(tile/td->td_stripsperimage);
    if (!(*tif->tif_preencode)(tif, sample))
        return ((tmsize_t)(-1));

    tif->tif_postdecode( tif, (uint8*) data, cc );

    if (!(*tif->tif_encodetile)(tif, (uint8*) data, cc, sample))
            return ((tmsize_t) -1);
    if (!(*tif->tif_postencode)(tif))
            return ((tmsize_t)(-1));
    if (!isFillOrder(tif, td->td_fillorder) &&
        (tif->tif_flags & TIFF_NOBITREV) == 0)
            TIFFReverseBits((uint8*)tif->tif_rawdata, tif->tif_rawcc);
    if (tif->tif_rawcc > 0 && !TIFFAppendToStrip(tif, tile,
        tif->tif_rawdata, tif->tif_rawcc))
            return ((tmsize_t)(-1));
    tif->tif_rawcc = 0;
    tif->tif_rawcp = tif->tif_rawdata;
    return (cc);
}

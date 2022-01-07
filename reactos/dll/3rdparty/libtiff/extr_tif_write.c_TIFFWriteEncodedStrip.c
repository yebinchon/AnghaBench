
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint64 ;
typedef size_t uint32 ;
typedef scalar_t__ uint16 ;
typedef scalar_t__ tmsize_t ;
struct TYPE_16__ {size_t td_nstrips; scalar_t__ td_planarconfig; size_t td_stripsperimage; size_t td_rowsperstrip; scalar_t__* td_stripbytecount; scalar_t__ td_compression; int td_fillorder; int td_imagelength; } ;
struct TYPE_17__ {int tif_flags; size_t tif_curstrip; size_t tif_row; scalar_t__ tif_rawdatasize; scalar_t__ tif_rawcc; int * tif_rawdata; int * tif_rawcp; int (* tif_postencode ) (TYPE_2__*) ;int (* tif_encodestrip ) (TYPE_2__*,int *,scalar_t__,scalar_t__) ;int (* tif_postdecode ) (TYPE_2__*,int *,scalar_t__) ;int (* tif_preencode ) (TYPE_2__*,scalar_t__) ;scalar_t__ tif_curoff; int (* tif_setupencode ) (TYPE_2__*) ;int tif_clientdata; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 int BUFFERCHECK (TYPE_2__*) ;
 scalar_t__ COMPRESSION_NONE ;
 scalar_t__ PLANARCONFIG_SEPARATE ;
 int TIFFAppendToStrip (TYPE_2__*,size_t,int *,scalar_t__) ;
 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFGrowStrips (TYPE_2__*,int,char const*) ;
 int TIFFReverseBits (int *,scalar_t__) ;
 int TIFFWriteBufferSetup (TYPE_2__*,int *,scalar_t__) ;
 int TIFF_BUF4WRITE ;
 int TIFF_CODERSETUP ;
 int TIFF_NOBITREV ;
 int TIFF_POSTENCODE ;
 size_t TIFFhowmany_32 (int ,size_t) ;
 scalar_t__ TIFFroundup_64 (int ,int) ;
 int WRITECHECKSTRIPS (TYPE_2__*,char const*) ;
 int isFillOrder (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int *,scalar_t__) ;
 int stub3 (TYPE_2__*,scalar_t__) ;
 int stub4 (TYPE_2__*,int *,scalar_t__) ;
 int stub5 (TYPE_2__*,int *,scalar_t__,scalar_t__) ;
 int stub6 (TYPE_2__*) ;

tmsize_t
TIFFWriteEncodedStrip(TIFF* tif, uint32 strip, void* data, tmsize_t cc)
{
 static const char module[] = "TIFFWriteEncodedStrip";
 TIFFDirectory *td = &tif->tif_dir;
 uint16 sample;

 if (!WRITECHECKSTRIPS(tif, module))
  return ((tmsize_t) -1);
 if (strip >= td->td_nstrips) {
  if (td->td_planarconfig == PLANARCONFIG_SEPARATE) {
   TIFFErrorExt(tif->tif_clientdata, module,
       "Can not grow image by strips when using separate planes");
   return ((tmsize_t) -1);
  }
  if (!TIFFGrowStrips(tif, 1, module))
   return ((tmsize_t) -1);
  td->td_stripsperimage =
      TIFFhowmany_32(td->td_imagelength, td->td_rowsperstrip);
 }





 if (!BUFFERCHECK(tif))
  return ((tmsize_t) -1);

        tif->tif_flags |= TIFF_BUF4WRITE;
 tif->tif_curstrip = strip;

        if (td->td_stripsperimage == 0) {
                TIFFErrorExt(tif->tif_clientdata, module, "Zero strips per image");
                return ((tmsize_t) -1);
        }

 tif->tif_row = (strip % td->td_stripsperimage) * td->td_rowsperstrip;
 if ((tif->tif_flags & TIFF_CODERSETUP) == 0) {
  if (!(*tif->tif_setupencode)(tif))
   return ((tmsize_t) -1);
  tif->tif_flags |= TIFF_CODERSETUP;
 }

 if( td->td_stripbytecount[strip] > 0 )
        {




            if( tif->tif_rawdatasize <= (tmsize_t)td->td_stripbytecount[strip] )
            {
                if( !(TIFFWriteBufferSetup(tif, ((void*)0),
                    (tmsize_t)TIFFroundup_64((uint64)(td->td_stripbytecount[strip] + 1), 1024))) )
                    return ((tmsize_t)(-1));
            }



            tif->tif_curoff = 0;
        }

    tif->tif_rawcc = 0;
    tif->tif_rawcp = tif->tif_rawdata;

 tif->tif_flags &= ~TIFF_POSTENCODE;


    if( td->td_compression == COMPRESSION_NONE )
    {

        tif->tif_postdecode( tif, (uint8*) data, cc );

        if (!isFillOrder(tif, td->td_fillorder) &&
            (tif->tif_flags & TIFF_NOBITREV) == 0)
            TIFFReverseBits((uint8*) data, cc);

        if (cc > 0 &&
            !TIFFAppendToStrip(tif, strip, (uint8*) data, cc))
            return ((tmsize_t) -1);
        return (cc);
    }

 sample = (uint16)(strip / td->td_stripsperimage);
 if (!(*tif->tif_preencode)(tif, sample))
  return ((tmsize_t) -1);


 tif->tif_postdecode( tif, (uint8*) data, cc );

 if (!(*tif->tif_encodestrip)(tif, (uint8*) data, cc, sample))
  return ((tmsize_t) -1);
 if (!(*tif->tif_postencode)(tif))
  return ((tmsize_t) -1);
 if (!isFillOrder(tif, td->td_fillorder) &&
     (tif->tif_flags & TIFF_NOBITREV) == 0)
  TIFFReverseBits(tif->tif_rawdata, tif->tif_rawcc);
 if (tif->tif_rawcc > 0 &&
     !TIFFAppendToStrip(tif, strip, tif->tif_rawdata, tif->tif_rawcc))
  return ((tmsize_t) -1);
 tif->tif_rawcc = 0;
 tif->tif_rawcp = tif->tif_rawdata;
 return (cc);
}

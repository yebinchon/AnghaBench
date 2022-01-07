
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
typedef scalar_t__ tmsize_t ;
struct TYPE_12__ {scalar_t__ td_compression; int td_fillorder; } ;
struct TYPE_13__ {int tif_flags; scalar_t__ (* tif_decodestrip ) (TYPE_2__*,void*,scalar_t__,int ) ;int (* tif_postdecode ) (TYPE_2__*,void*,scalar_t__) ;TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 scalar_t__ COMPRESSION_NONE ;
 int TIFFFillStrip (TYPE_2__*,int ) ;
 scalar_t__ TIFFReadEncodedStripGetStripSize (TYPE_2__*,int ,int *) ;
 scalar_t__ TIFFReadRawStrip1 (TYPE_2__*,int ,void*,scalar_t__,char const*) ;
 int TIFFReverseBits (void*,scalar_t__) ;
 int TIFF_NOBITREV ;
 int TIFF_NOREADRAW ;
 int isFillOrder (TYPE_2__*,int ) ;
 int isMapped (TYPE_2__*) ;
 int stub1 (TYPE_2__*,void*,scalar_t__) ;
 scalar_t__ stub2 (TYPE_2__*,void*,scalar_t__,int ) ;
 int stub3 (TYPE_2__*,void*,scalar_t__) ;

tmsize_t
TIFFReadEncodedStrip(TIFF* tif, uint32 strip, void* buf, tmsize_t size)
{
 static const char module[] = "TIFFReadEncodedStrip";
 TIFFDirectory *td = &tif->tif_dir;
 tmsize_t stripsize;
 uint16 plane;

 stripsize=TIFFReadEncodedStripGetStripSize(tif, strip, &plane);
 if (stripsize==((tmsize_t)(-1)))
  return((tmsize_t)(-1));


    if( td->td_compression == COMPRESSION_NONE &&
        size!=(tmsize_t)(-1) && size >= stripsize &&
        !isMapped(tif) &&
        ((tif->tif_flags&TIFF_NOREADRAW)==0) )
    {
        if (TIFFReadRawStrip1(tif, strip, buf, stripsize, module) != stripsize)
            return ((tmsize_t)(-1));

        if (!isFillOrder(tif, td->td_fillorder) &&
            (tif->tif_flags & TIFF_NOBITREV) == 0)
            TIFFReverseBits(buf,stripsize);

        (*tif->tif_postdecode)(tif,buf,stripsize);
        return (stripsize);
    }

 if ((size!=(tmsize_t)(-1))&&(size<stripsize))
  stripsize=size;
 if (!TIFFFillStrip(tif,strip))
  return((tmsize_t)(-1));
 if ((*tif->tif_decodestrip)(tif,buf,stripsize,plane)<=0)
  return((tmsize_t)(-1));
 (*tif->tif_postdecode)(tif,buf,stripsize);
 return(stripsize);
}

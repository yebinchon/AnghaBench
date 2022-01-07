
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
typedef scalar_t__ tmsize_t ;
struct TYPE_9__ {scalar_t__ (* tif_decodestrip ) (TYPE_1__*,void*,scalar_t__,int ) ;int (* tif_postdecode ) (TYPE_1__*,void*,scalar_t__) ;int tif_clientdata; } ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,int ,char*) ;
 int TIFFFileName (TYPE_1__*) ;
 int TIFFFillStrip (TYPE_1__*,int ) ;
 scalar_t__ TIFFReadEncodedStrip (TYPE_1__*,int ,void*,scalar_t__) ;
 scalar_t__ TIFFReadEncodedStripGetStripSize (TYPE_1__*,int ,int *) ;
 void* _TIFFmalloc (scalar_t__) ;
 int _TIFFmemset (void*,int ,scalar_t__) ;
 scalar_t__ stub1 (TYPE_1__*,void*,scalar_t__,int ) ;
 int stub2 (TYPE_1__*,void*,scalar_t__) ;

tmsize_t
_TIFFReadEncodedStripAndAllocBuffer(TIFF* tif, uint32 strip,
                                    void **buf, tmsize_t bufsizetoalloc,
                                    tmsize_t size_to_read)
{
    tmsize_t this_stripsize;
    uint16 plane;

    if( *buf != ((void*)0) )
    {
        return TIFFReadEncodedStrip(tif, strip, *buf, size_to_read);
    }

    this_stripsize=TIFFReadEncodedStripGetStripSize(tif, strip, &plane);
    if (this_stripsize==((tmsize_t)(-1)))
            return((tmsize_t)(-1));

    if ((size_to_read!=(tmsize_t)(-1))&&(size_to_read<this_stripsize))
            this_stripsize=size_to_read;
    if (!TIFFFillStrip(tif,strip))
            return((tmsize_t)(-1));

    *buf = _TIFFmalloc(bufsizetoalloc);
    if (*buf == ((void*)0)) {
            TIFFErrorExt(tif->tif_clientdata, TIFFFileName(tif), "No space for strip buffer");
            return((tmsize_t)(-1));
    }
    _TIFFmemset(*buf, 0, bufsizetoalloc);

    if ((*tif->tif_decodestrip)(tif,*buf,this_stripsize,plane)<=0)
            return((tmsize_t)(-1));
    (*tif->tif_postdecode)(tif,*buf,this_stripsize);
    return(this_stripsize);


}

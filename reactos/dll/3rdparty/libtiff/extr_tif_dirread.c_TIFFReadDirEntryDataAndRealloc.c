
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint64 ;
typedef scalar_t__ tmsize_t ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_6__ {int tif_name; int tif_clientdata; } ;
typedef TYPE_1__ TIFF ;


 scalar_t__ INITIAL_THRESHOLD ;
 scalar_t__ MAX_THRESHOLD ;
 int SeekOK (TYPE_1__*,int ) ;
 scalar_t__ THRESHOLD_MULTIPLIER ;
 int TIFFErrorExt (int ,int ,char*,char*,long,long) ;
 int TIFFReadDirEntryErrAlloc ;
 int TIFFReadDirEntryErrIo ;
 int TIFFReadDirEntryErrOk ;
 scalar_t__ TIFFReadFile (TYPE_1__*,char*,scalar_t__) ;
 scalar_t__ _TIFFrealloc (void*,scalar_t__) ;
 int assert (int) ;
 int isMapped (TYPE_1__*) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryDataAndRealloc(
                    TIFF* tif, uint64 offset, tmsize_t size, void** pdest)
{



        tmsize_t already_read = 0;

        assert( !isMapped(tif) );

        if (!SeekOK(tif,offset))
                return(TIFFReadDirEntryErrIo);







        while( already_read < size )
        {
            void* new_dest;
            tmsize_t bytes_read;
            tmsize_t to_read = size - already_read;
            new_dest = (uint8*) _TIFFrealloc(
                            *pdest, already_read + to_read);
            if( new_dest == ((void*)0) )
            {
                TIFFErrorExt(tif->tif_clientdata, tif->tif_name,
                            "Failed to allocate memory for %s "
                            "(%ld elements of %ld bytes each)",
                            "TIFFReadDirEntryArray",
                             (long) 1, (long) (already_read + to_read));
                return TIFFReadDirEntryErrAlloc;
            }
            *pdest = new_dest;

            bytes_read = TIFFReadFile(tif,
                (char*)*pdest + already_read, to_read);
            already_read += bytes_read;
            if (bytes_read != to_read) {
                return TIFFReadDirEntryErrIo;
            }
        }
        return TIFFReadDirEntryErrOk;
}

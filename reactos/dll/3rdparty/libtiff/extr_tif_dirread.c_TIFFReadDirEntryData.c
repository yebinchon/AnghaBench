
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef scalar_t__ tmsize_t ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_6__ {scalar_t__ tif_base; scalar_t__ tif_size; } ;
typedef TYPE_1__ TIFF ;


 int ReadOK (TYPE_1__*,void*,scalar_t__) ;
 int SeekOK (TYPE_1__*,scalar_t__) ;
 int TIFFReadDirEntryErrIo ;
 int TIFFReadDirEntryErrOk ;
 int _TIFFmemcpy (void*,scalar_t__,scalar_t__) ;
 int assert (int) ;
 int isMapped (TYPE_1__*) ;

__attribute__((used)) static enum TIFFReadDirEntryErr
TIFFReadDirEntryData(TIFF* tif, uint64 offset, tmsize_t size, void* dest)
{
 assert(size>0);
 if (!isMapped(tif)) {
  if (!SeekOK(tif,offset))
   return(TIFFReadDirEntryErrIo);
  if (!ReadOK(tif,dest,size))
   return(TIFFReadDirEntryErrIo);
 } else {
  size_t ma,mb;
  ma=(size_t)offset;
  mb=ma+size;
  if (((uint64)ma!=offset)
      || (mb < ma)
      || (mb - ma != (size_t) size)
      || (mb < (size_t)size)
      || (mb > (size_t)tif->tif_size)
      )
   return(TIFFReadDirEntryErrIo);
  _TIFFmemcpy(dest,tif->tif_base+ma,size);
 }
 return(TIFFReadDirEntryErrOk);
}

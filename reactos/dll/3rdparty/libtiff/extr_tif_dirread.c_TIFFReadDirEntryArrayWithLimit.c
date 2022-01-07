
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int uint32 ;
typedef scalar_t__ tmsize_t ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_12__ {int toff_long; scalar_t__ toff_long8; } ;
struct TYPE_11__ {int tif_flags; scalar_t__ tif_size; } ;
struct TYPE_10__ {scalar_t__ tdir_count; TYPE_4__ tdir_offset; int tdir_type; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFDataWidth (int ) ;
 int TIFFReadDirEntryData (TYPE_2__*,scalar_t__,scalar_t__,void*) ;
 int TIFFReadDirEntryDataAndRealloc (TYPE_2__*,scalar_t__,scalar_t__,void**) ;
 int TIFFReadDirEntryErrAlloc ;
 int TIFFReadDirEntryErrIo ;
 int TIFFReadDirEntryErrOk ;
 int TIFFReadDirEntryErrSizesan ;
 int TIFFSwabLong (int*) ;
 int TIFFSwabLong8 (scalar_t__*) ;
 int TIFF_BIGTIFF ;
 int TIFF_SWAB ;
 void* _TIFFCheckMalloc (TYPE_2__*,int,int,char*) ;
 int _TIFFfree (void*) ;
 int _TIFFmemcpy (void*,TYPE_4__*,int) ;
 int assert (int) ;
 scalar_t__ isMapped (TYPE_2__*) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryArrayWithLimit(
    TIFF* tif, TIFFDirEntry* direntry, uint32* count, uint32 desttypesize,
    void** value, uint64 maxcount)
{
 int typesize;
 uint32 datasize;
 void* data;
        uint64 target_count64;
 typesize=TIFFDataWidth(direntry->tdir_type);

        target_count64 = (direntry->tdir_count > maxcount) ?
                maxcount : direntry->tdir_count;

 if ((target_count64==0)||(typesize==0))
 {
  *value=0;
  return(TIFFReadDirEntryErrOk);
 }
        (void) desttypesize;






 if ((uint64)(2147483647/typesize)<target_count64)
  return(TIFFReadDirEntryErrSizesan);
 if ((uint64)(2147483647/desttypesize)<target_count64)
  return(TIFFReadDirEntryErrSizesan);

 *count=(uint32)target_count64;
 datasize=(*count)*typesize;
 assert((tmsize_t)datasize>0);

 if( isMapped(tif) && datasize > (uint32)tif->tif_size )
  return TIFFReadDirEntryErrIo;

 if( !isMapped(tif) &&
  (((tif->tif_flags&TIFF_BIGTIFF) && datasize > 8) ||
  (!(tif->tif_flags&TIFF_BIGTIFF) && datasize > 4)) )
 {
  data = ((void*)0);
 }
 else
 {
  data=_TIFFCheckMalloc(tif, *count, typesize, "ReadDirEntryArray");
  if (data==0)
   return(TIFFReadDirEntryErrAlloc);
 }
 if (!(tif->tif_flags&TIFF_BIGTIFF))
 {
  if (datasize<=4)
   _TIFFmemcpy(data,&direntry->tdir_offset,datasize);
  else
  {
   enum TIFFReadDirEntryErr err;
   uint32 offset = direntry->tdir_offset.toff_long;
   if (tif->tif_flags&TIFF_SWAB)
    TIFFSwabLong(&offset);
   if( isMapped(tif) )
    err=TIFFReadDirEntryData(tif,(uint64)offset,(tmsize_t)datasize,data);
   else
    err=TIFFReadDirEntryDataAndRealloc(tif,(uint64)offset,(tmsize_t)datasize,&data);
   if (err!=TIFFReadDirEntryErrOk)
   {
    _TIFFfree(data);
    return(err);
   }
  }
 }
 else
 {
  if (datasize<=8)
   _TIFFmemcpy(data,&direntry->tdir_offset,datasize);
  else
  {
   enum TIFFReadDirEntryErr err;
   uint64 offset = direntry->tdir_offset.toff_long8;
   if (tif->tif_flags&TIFF_SWAB)
    TIFFSwabLong8(&offset);
   if( isMapped(tif) )
    err=TIFFReadDirEntryData(tif,(uint64)offset,(tmsize_t)datasize,data);
   else
    err=TIFFReadDirEntryDataAndRealloc(tif,(uint64)offset,(tmsize_t)datasize,&data);
   if (err!=TIFFReadDirEntryErrOk)
   {
    _TIFFfree(data);
    return(err);
   }
  }
 }
 *value=data;
 return(TIFFReadDirEntryErrOk);
}

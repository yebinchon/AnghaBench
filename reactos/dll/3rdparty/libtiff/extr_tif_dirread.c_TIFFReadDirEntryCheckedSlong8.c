
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int int64 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_9__ {int tif_flags; } ;
struct TYPE_7__ {int toff_long; } ;
struct TYPE_8__ {TYPE_1__ tdir_offset; } ;
typedef TYPE_2__ TIFFDirEntry ;
typedef TYPE_3__ TIFF ;


 int TIFFReadDirEntryData (TYPE_3__*,int ,int,int *) ;
 int TIFFReadDirEntryErrOk ;
 int TIFFSwabLong (int *) ;
 int TIFFSwabLong8 (int *) ;
 int TIFF_BIGTIFF ;
 int TIFF_SWAB ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryCheckedSlong8(TIFF* tif, TIFFDirEntry* direntry, int64* value)
{
 if (!(tif->tif_flags&TIFF_BIGTIFF))
 {
  enum TIFFReadDirEntryErr err;
  uint32 offset = direntry->tdir_offset.toff_long;
  if (tif->tif_flags&TIFF_SWAB)
   TIFFSwabLong(&offset);
  err=TIFFReadDirEntryData(tif,offset,8,value);
  if (err!=TIFFReadDirEntryErrOk)
   return(err);
 }
 else
  *value=*(int64*)(&direntry->tdir_offset);
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabLong8((uint64*)value);
 return(TIFFReadDirEntryErrOk);
}

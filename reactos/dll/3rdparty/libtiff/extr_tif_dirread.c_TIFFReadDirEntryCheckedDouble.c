
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_9__ {double d; int l; } ;
typedef TYPE_2__ UInt64Aligned_t ;
struct TYPE_11__ {int tif_flags; } ;
struct TYPE_8__ {int toff_long8; int toff_long; } ;
struct TYPE_10__ {TYPE_1__ tdir_offset; } ;
typedef TYPE_3__ TIFFDirEntry ;
typedef TYPE_4__ TIFF ;


 int TIFFReadDirEntryData (TYPE_4__*,int ,int,double*) ;
 int TIFFReadDirEntryErrOk ;
 int TIFFSwabLong (int *) ;
 int TIFFSwabLong8 (int *) ;
 int TIFF_BIGTIFF ;
 int TIFF_SWAB ;
 int assert (int) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryCheckedDouble(TIFF* tif, TIFFDirEntry* direntry, double* value)
{
 assert(sizeof(double)==8);
 assert(sizeof(uint64)==8);
 assert(sizeof(UInt64Aligned_t)==8);
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
 {
        UInt64Aligned_t uint64_union;
        uint64_union.l=direntry->tdir_offset.toff_long8;
        *value=uint64_union.d;
 }
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabLong8((uint64*)value);
 return(TIFFReadDirEntryErrOk);
}

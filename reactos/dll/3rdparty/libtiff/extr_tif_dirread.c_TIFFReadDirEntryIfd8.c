
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_5__ {int tdir_count; int tdir_type; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef int TIFF ;


 int TIFFReadDirEntryCheckedLong (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryCheckedLong8 (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryErrCount ;
 int TIFFReadDirEntryErrOk ;
 int TIFFReadDirEntryErrType ;





__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryIfd8(TIFF* tif, TIFFDirEntry* direntry, uint64* value)
{
 enum TIFFReadDirEntryErr err;
 if (direntry->tdir_count!=1)
  return(TIFFReadDirEntryErrCount);
 switch (direntry->tdir_type)
 {
  case 129:
  case 131:
   {
    uint32 m;
    TIFFReadDirEntryCheckedLong(tif,direntry,&m);
    *value=(uint64)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 128:
  case 130:
   err=TIFFReadDirEntryCheckedLong8(tif,direntry,value);
   return(err);
  default:
   return(TIFFReadDirEntryErrType);
 }
}

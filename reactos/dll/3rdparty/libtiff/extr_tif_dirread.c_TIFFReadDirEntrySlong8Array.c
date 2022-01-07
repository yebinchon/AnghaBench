
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint64 ;
typedef int uint32 ;
typedef int uint16 ;
typedef int int8 ;
typedef void* int64 ;
typedef int int32 ;
typedef int int16 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_8__ {int tif_flags; } ;
struct TYPE_7__ {int tdir_type; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFReadDirEntryArray (TYPE_2__*,TYPE_1__*,int*,int,void**) ;
 int TIFFReadDirEntryCheckRangeSlong8Long8 (int ) ;
 int TIFFReadDirEntryErrAlloc ;
 int TIFFReadDirEntryErrOk ;
 int TIFFReadDirEntryErrType ;
 int TIFFSwabArrayOfLong8 (int *,int) ;
 int TIFFSwabLong (int*) ;
 int TIFFSwabLong8 (int *) ;
 int TIFFSwabShort (int *) ;
 int TIFF_SWAB ;
 int _TIFFfree (void*) ;
 scalar_t__ _TIFFmalloc (int) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntrySlong8Array(TIFF* tif, TIFFDirEntry* direntry, int64** value)
{
 enum TIFFReadDirEntryErr err;
 uint32 count;
 void* origdata;
 int64* data;
 switch (direntry->tdir_type)
 {
  case 135:
  case 132:
  case 131:
  case 128:
  case 134:
  case 130:
  case 133:
  case 129:
   break;
  default:
   return(TIFFReadDirEntryErrType);
 }
 err=TIFFReadDirEntryArray(tif,direntry,&count,8,&origdata);
 if ((err!=TIFFReadDirEntryErrOk)||(origdata==0))
 {
  *value=0;
  return(err);
 }
 switch (direntry->tdir_type)
 {
  case 133:
   {
    uint64* m;
    uint32 n;
    m=(uint64*)origdata;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong8(m);
     err=TIFFReadDirEntryCheckRangeSlong8Long8(*m);
     if (err!=TIFFReadDirEntryErrOk)
     {
      _TIFFfree(origdata);
      return(err);
     }
     m++;
    }
    *value=(int64*)origdata;
    return(TIFFReadDirEntryErrOk);
   }
  case 129:
   *value=(int64*)origdata;
   if (tif->tif_flags&TIFF_SWAB)
    TIFFSwabArrayOfLong8((uint64*)(*value),count);
   return(TIFFReadDirEntryErrOk);
 }
 data=(int64*)_TIFFmalloc(count*8);
 if (data==0)
 {
  _TIFFfree(origdata);
  return(TIFFReadDirEntryErrAlloc);
 }
 switch (direntry->tdir_type)
 {
  case 135:
   {
    uint8* ma;
    int64* mb;
    uint32 n;
    ma=(uint8*)origdata;
    mb=data;
    for (n=0; n<count; n++)
     *mb++=(int64)(*ma++);
   }
   break;
  case 132:
   {
    int8* ma;
    int64* mb;
    uint32 n;
    ma=(int8*)origdata;
    mb=data;
    for (n=0; n<count; n++)
     *mb++=(int64)(*ma++);
   }
   break;
  case 131:
   {
    uint16* ma;
    int64* mb;
    uint32 n;
    ma=(uint16*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabShort(ma);
     *mb++=(int64)(*ma++);
    }
   }
   break;
  case 128:
   {
    int16* ma;
    int64* mb;
    uint32 n;
    ma=(int16*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabShort((uint16*)ma);
     *mb++=(int64)(*ma++);
    }
   }
   break;
  case 134:
   {
    uint32* ma;
    int64* mb;
    uint32 n;
    ma=(uint32*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong(ma);
     *mb++=(int64)(*ma++);
    }
   }
   break;
  case 130:
   {
    int32* ma;
    int64* mb;
    uint32 n;
    ma=(int32*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong((uint32*)ma);
     *mb++=(int64)(*ma++);
    }
   }
   break;
 }
 _TIFFfree(origdata);
 *value=data;
 return(TIFFReadDirEntryErrOk);
}

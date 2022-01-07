
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
typedef int int64 ;
typedef int int32 ;
typedef int int16 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_8__ {int tif_flags; } ;
struct TYPE_7__ {int tdir_type; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFReadDirEntryArray (TYPE_2__*,TYPE_1__*,int*,int,void**) ;
 int TIFFReadDirEntryCheckRangeLongLong8 (int ) ;
 int TIFFReadDirEntryCheckRangeLongSbyte (int ) ;
 int TIFFReadDirEntryCheckRangeLongSlong (int ) ;
 int TIFFReadDirEntryCheckRangeLongSlong8 (int ) ;
 int TIFFReadDirEntryCheckRangeLongSshort (int ) ;
 int TIFFReadDirEntryErrAlloc ;
 int TIFFReadDirEntryErrOk ;
 int TIFFReadDirEntryErrType ;
 int TIFFSwabArrayOfLong (int*,int) ;
 int TIFFSwabLong (int*) ;
 int TIFFSwabLong8 (int *) ;
 int TIFFSwabShort (int *) ;
 int TIFF_SWAB ;
 int _TIFFfree (int*) ;
 scalar_t__ _TIFFmalloc (int) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryLongArray(TIFF* tif, TIFFDirEntry* direntry, uint32** value)
{
 enum TIFFReadDirEntryErr err;
 uint32 count;
 void* origdata;
 uint32* data;
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
 err=TIFFReadDirEntryArray(tif,direntry,&count,4,&origdata);
 if ((err!=TIFFReadDirEntryErrOk)||(origdata==0))
 {
  *value=0;
  return(err);
 }
 switch (direntry->tdir_type)
 {
  case 134:
   *value=(uint32*)origdata;
   if (tif->tif_flags&TIFF_SWAB)
    TIFFSwabArrayOfLong(*value,count);
   return(TIFFReadDirEntryErrOk);
  case 130:
   {
    int32* m;
    uint32 n;
    m=(int32*)origdata;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong((uint32*)m);
     err=TIFFReadDirEntryCheckRangeLongSlong(*m);
     if (err!=TIFFReadDirEntryErrOk)
     {
      _TIFFfree(origdata);
      return(err);
     }
     m++;
    }
    *value=(uint32*)origdata;
    return(TIFFReadDirEntryErrOk);
   }
 }
 data=(uint32*)_TIFFmalloc(count*4);
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
    uint32* mb;
    uint32 n;
    ma=(uint8*)origdata;
    mb=data;
    for (n=0; n<count; n++)
     *mb++=(uint32)(*ma++);
   }
   break;
  case 132:
   {
    int8* ma;
    uint32* mb;
    uint32 n;
    ma=(int8*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     err=TIFFReadDirEntryCheckRangeLongSbyte(*ma);
     if (err!=TIFFReadDirEntryErrOk)
      break;
     *mb++=(uint32)(*ma++);
    }
   }
   break;
  case 131:
   {
    uint16* ma;
    uint32* mb;
    uint32 n;
    ma=(uint16*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabShort(ma);
     *mb++=(uint32)(*ma++);
    }
   }
   break;
  case 128:
   {
    int16* ma;
    uint32* mb;
    uint32 n;
    ma=(int16*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabShort((uint16*)ma);
     err=TIFFReadDirEntryCheckRangeLongSshort(*ma);
     if (err!=TIFFReadDirEntryErrOk)
      break;
     *mb++=(uint32)(*ma++);
    }
   }
   break;
  case 133:
   {
    uint64* ma;
    uint32* mb;
    uint32 n;
    ma=(uint64*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong8(ma);
     err=TIFFReadDirEntryCheckRangeLongLong8(*ma);
     if (err!=TIFFReadDirEntryErrOk)
      break;
     *mb++=(uint32)(*ma++);
    }
   }
   break;
  case 129:
   {
    int64* ma;
    uint32* mb;
    uint32 n;
    ma=(int64*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong8((uint64*)ma);
     err=TIFFReadDirEntryCheckRangeLongSlong8(*ma);
     if (err!=TIFFReadDirEntryErrOk)
      break;
     *mb++=(uint32)(*ma++);
    }
   }
   break;
 }
 _TIFFfree(origdata);
 if (err!=TIFFReadDirEntryErrOk)
 {
  _TIFFfree(data);
  return(err);
 }
 *value=data;
 return(TIFFReadDirEntryErrOk);
}

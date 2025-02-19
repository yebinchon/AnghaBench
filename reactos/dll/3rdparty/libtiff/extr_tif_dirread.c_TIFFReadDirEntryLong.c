
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint64 ;
typedef int uint32 ;
typedef int uint16 ;
typedef int int8 ;
typedef int int64 ;
typedef int int32 ;
typedef int int16 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_11__ {int tdir_count; int tdir_type; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef int TIFF ;


 int TIFFReadDirEntryCheckRangeLongLong8 (int ) ;
 int TIFFReadDirEntryCheckRangeLongSbyte (int ) ;
 int TIFFReadDirEntryCheckRangeLongSlong (int ) ;
 int TIFFReadDirEntryCheckRangeLongSlong8 (int ) ;
 int TIFFReadDirEntryCheckRangeLongSshort (int ) ;
 int TIFFReadDirEntryCheckedByte (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryCheckedLong (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryCheckedLong8 (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryCheckedSbyte (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryCheckedShort (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryCheckedSlong (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryCheckedSlong8 (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryCheckedSshort (int *,TYPE_1__*,int *) ;
 int TIFFReadDirEntryErrCount ;
 int TIFFReadDirEntryErrOk ;
 int TIFFReadDirEntryErrType ;
__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryLong(TIFF* tif, TIFFDirEntry* direntry, uint32* value)
{
 enum TIFFReadDirEntryErr err;
 if (direntry->tdir_count!=1)
  return(TIFFReadDirEntryErrCount);
 switch (direntry->tdir_type)
 {
  case 135:
   {
    uint8 m;
    TIFFReadDirEntryCheckedByte(tif,direntry,&m);
    *value=(uint32)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 132:
   {
    int8 m;
    TIFFReadDirEntryCheckedSbyte(tif,direntry,&m);
    err=TIFFReadDirEntryCheckRangeLongSbyte(m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    *value=(uint32)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 131:
   {
    uint16 m;
    TIFFReadDirEntryCheckedShort(tif,direntry,&m);
    *value=(uint32)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 128:
   {
    int16 m;
    TIFFReadDirEntryCheckedSshort(tif,direntry,&m);
    err=TIFFReadDirEntryCheckRangeLongSshort(m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    *value=(uint32)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 134:
   TIFFReadDirEntryCheckedLong(tif,direntry,value);
   return(TIFFReadDirEntryErrOk);
  case 130:
   {
    int32 m;
    TIFFReadDirEntryCheckedSlong(tif,direntry,&m);
    err=TIFFReadDirEntryCheckRangeLongSlong(m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    *value=(uint32)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 133:
   {
    uint64 m;
    err=TIFFReadDirEntryCheckedLong8(tif,direntry,&m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    err=TIFFReadDirEntryCheckRangeLongLong8(m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    *value=(uint32)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 129:
   {
    int64 m;
    err=TIFFReadDirEntryCheckedSlong8(tif,direntry,&m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    err=TIFFReadDirEntryCheckRangeLongSlong8(m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    *value=(uint32)m;
    return(TIFFReadDirEntryErrOk);
   }
  default:
   return(TIFFReadDirEntryErrType);
 }
}

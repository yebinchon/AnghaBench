
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef scalar_t__ uint64 ;
typedef scalar_t__ uint32 ;
typedef scalar_t__ uint16 ;
typedef scalar_t__ int8 ;
typedef scalar_t__ int64 ;
typedef scalar_t__ int32 ;
typedef scalar_t__ int16 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_15__ {int tdir_count; int tdir_type; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef int TIFF ;


 double FLT_MAX ;
 double FLT_MIN ;
 int TIFFReadDirEntryCheckedByte (int *,TYPE_1__*,scalar_t__*) ;
 int TIFFReadDirEntryCheckedDouble (int *,TYPE_1__*,double*) ;
 int TIFFReadDirEntryCheckedFloat (int *,TYPE_1__*,float*) ;
 int TIFFReadDirEntryCheckedLong (int *,TYPE_1__*,scalar_t__*) ;
 int TIFFReadDirEntryCheckedLong8 (int *,TYPE_1__*,scalar_t__*) ;
 int TIFFReadDirEntryCheckedRational (int *,TYPE_1__*,double*) ;
 int TIFFReadDirEntryCheckedSbyte (int *,TYPE_1__*,scalar_t__*) ;
 int TIFFReadDirEntryCheckedShort (int *,TYPE_1__*,scalar_t__*) ;
 int TIFFReadDirEntryCheckedSlong (int *,TYPE_1__*,scalar_t__*) ;
 int TIFFReadDirEntryCheckedSlong8 (int *,TYPE_1__*,scalar_t__*) ;
 int TIFFReadDirEntryCheckedSrational (int *,TYPE_1__*,double*) ;
 int TIFFReadDirEntryCheckedSshort (int *,TYPE_1__*,scalar_t__*) ;
 int TIFFReadDirEntryErrCount ;
 int TIFFReadDirEntryErrOk ;
 int TIFFReadDirEntryErrRange ;
 int TIFFReadDirEntryErrType ;
 float _TIFFUInt64ToFloat (scalar_t__) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryFloat(TIFF* tif, TIFFDirEntry* direntry, float* value)
{
 enum TIFFReadDirEntryErr err;
 if (direntry->tdir_count!=1)
  return(TIFFReadDirEntryErrCount);
 switch (direntry->tdir_type)
 {
  case 139:
   {
    uint8 m;
    TIFFReadDirEntryCheckedByte(tif,direntry,&m);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 133:
   {
    int8 m;
    TIFFReadDirEntryCheckedSbyte(tif,direntry,&m);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 132:
   {
    uint16 m;
    TIFFReadDirEntryCheckedShort(tif,direntry,&m);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 128:
   {
    int16 m;
    TIFFReadDirEntryCheckedSshort(tif,direntry,&m);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 136:
   {
    uint32 m;
    TIFFReadDirEntryCheckedLong(tif,direntry,&m);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 131:
   {
    int32 m;
    TIFFReadDirEntryCheckedSlong(tif,direntry,&m);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 135:
   {
    uint64 m;
    err=TIFFReadDirEntryCheckedLong8(tif,direntry,&m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    *value=(float)m;

    return(TIFFReadDirEntryErrOk);
   }
  case 130:
   {
    int64 m;
    err=TIFFReadDirEntryCheckedSlong8(tif,direntry,&m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 134:
   {
    double m;
    err=TIFFReadDirEntryCheckedRational(tif,direntry,&m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 129:
   {
    double m;
    err=TIFFReadDirEntryCheckedSrational(tif,direntry,&m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  case 137:
   TIFFReadDirEntryCheckedFloat(tif,direntry,value);
   return(TIFFReadDirEntryErrOk);
  case 138:
   {
    double m;
    err=TIFFReadDirEntryCheckedDouble(tif,direntry,&m);
    if (err!=TIFFReadDirEntryErrOk)
     return(err);
    if ((m > FLT_MAX) || (m < FLT_MIN))
     return(TIFFReadDirEntryErrRange);
    *value=(float)m;
    return(TIFFReadDirEntryErrOk);
   }
  default:
   return(TIFFReadDirEntryErrType);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint64 ;
typedef int uint32 ;
typedef int uint16 ;
typedef int int8 ;
typedef int int64 ;
typedef scalar_t__ int32 ;
typedef int int16 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_9__ {int tif_flags; } ;
struct TYPE_8__ {int tdir_type; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 double FLT_MAX ;
 int TIFFCvtIEEEDoubleToNative (TYPE_2__*,int,...) ;
 int TIFFReadDirEntryArray (TYPE_2__*,TYPE_1__*,int*,int,void**) ;
 int TIFFReadDirEntryErrAlloc ;
 int TIFFReadDirEntryErrOk ;
 int TIFFReadDirEntryErrType ;
 int TIFFSwabArrayOfLong (int*,int) ;
 int TIFFSwabArrayOfLong8 (int *,int) ;
 int TIFFSwabLong (int*) ;
 int TIFFSwabLong8 (int *) ;
 int TIFFSwabShort (int *) ;
 int TIFF_SWAB ;
 int _TIFFUInt64ToFloat (int ) ;
 int _TIFFfree (void*) ;
 scalar_t__ _TIFFmalloc (int) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryFloatArray(TIFF* tif, TIFFDirEntry* direntry, float** value)
{
 enum TIFFReadDirEntryErr err;
 uint32 count;
 void* origdata;
 float* data;
 switch (direntry->tdir_type)
 {
  case 139:
  case 133:
  case 132:
  case 128:
  case 136:
  case 131:
  case 135:
  case 130:
  case 134:
  case 129:
  case 137:
  case 138:
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
  case 137:
   if (tif->tif_flags&TIFF_SWAB)
    TIFFSwabArrayOfLong((uint32*)origdata,count);
   TIFFCvtIEEEDoubleToNative(tif,count,(float*)origdata);
   *value=(float*)origdata;
   return(TIFFReadDirEntryErrOk);
 }
 data=(float*)_TIFFmalloc(count*sizeof(float));
 if (data==0)
 {
  _TIFFfree(origdata);
  return(TIFFReadDirEntryErrAlloc);
 }
 switch (direntry->tdir_type)
 {
  case 139:
   {
    uint8* ma;
    float* mb;
    uint32 n;
    ma=(uint8*)origdata;
    mb=data;
    for (n=0; n<count; n++)
     *mb++=(float)(*ma++);
   }
   break;
  case 133:
   {
    int8* ma;
    float* mb;
    uint32 n;
    ma=(int8*)origdata;
    mb=data;
    for (n=0; n<count; n++)
     *mb++=(float)(*ma++);
   }
   break;
  case 132:
   {
    uint16* ma;
    float* mb;
    uint32 n;
    ma=(uint16*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabShort(ma);
     *mb++=(float)(*ma++);
    }
   }
   break;
  case 128:
   {
    int16* ma;
    float* mb;
    uint32 n;
    ma=(int16*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabShort((uint16*)ma);
     *mb++=(float)(*ma++);
    }
   }
   break;
  case 136:
   {
    uint32* ma;
    float* mb;
    uint32 n;
    ma=(uint32*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong(ma);
     *mb++=(float)(*ma++);
    }
   }
   break;
  case 131:
   {
    int32* ma;
    float* mb;
    uint32 n;
    ma=(int32*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong((uint32*)ma);
     *mb++=(float)(*ma++);
    }
   }
   break;
  case 135:
   {
    uint64* ma;
    float* mb;
    uint32 n;
    ma=(uint64*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong8(ma);
     *mb++ = (float)(*ma++);

    }
   }
   break;
  case 130:
   {
    int64* ma;
    float* mb;
    uint32 n;
    ma=(int64*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong8((uint64*)ma);
     *mb++=(float)(*ma++);
    }
   }
   break;
  case 134:
   {
    uint32* ma;
    uint32 maa;
    uint32 mab;
    float* mb;
    uint32 n;
    ma=(uint32*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong(ma);
     maa=*ma++;
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong(ma);
     mab=*ma++;
     if (mab==0)
      *mb++=0.0;
     else
      *mb++=(float)maa/(float)mab;
    }
   }
   break;
  case 129:
   {
    uint32* ma;
    int32 maa;
    uint32 mab;
    float* mb;
    uint32 n;
    ma=(uint32*)origdata;
    mb=data;
    for (n=0; n<count; n++)
    {
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong(ma);
     maa=*(int32*)ma;
     ma++;
     if (tif->tif_flags&TIFF_SWAB)
      TIFFSwabLong(ma);
     mab=*ma++;
     if (mab==0)
      *mb++=0.0;
     else
      *mb++=(float)maa/(float)mab;
    }
   }
   break;
  case 138:
   {
    double* ma;
    float* mb;
    uint32 n;
    if (tif->tif_flags&TIFF_SWAB)
     TIFFSwabArrayOfLong8((uint64*)origdata,count);
    TIFFCvtIEEEDoubleToNative(tif,count,(double*)origdata);
    ma=(double*)origdata;
    mb=data;
    for (n=0; n<count; n++)
                                {
                                    double val = *ma++;
                                    if( val > FLT_MAX )
                                        val = FLT_MAX;
                                    else if( val < -FLT_MAX )
                                        val = -FLT_MAX;
                                    *mb++=(float)val;
                                }
   }
   break;
 }
 _TIFFfree(origdata);
 *value=data;
 return(TIFFReadDirEntryErrOk);
}

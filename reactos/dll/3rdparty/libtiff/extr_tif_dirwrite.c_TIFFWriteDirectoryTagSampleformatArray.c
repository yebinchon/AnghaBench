
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
typedef int int8 ;
typedef int int32 ;
typedef int int16 ;
struct TYPE_12__ {int td_sampleformat; int td_bitspersample; } ;
struct TYPE_13__ {TYPE_1__ tif_dir; int tif_clientdata; } ;
typedef int TIFFDirEntry ;
typedef TYPE_2__ TIFF ;





 float TIFFClampDoubleToFloat (double) ;
 int TIFFClampDoubleToInt16 (double) ;
 int TIFFClampDoubleToInt32 (double) ;
 int TIFFClampDoubleToInt8 (double) ;
 int TIFFClampDoubleToUInt16 (double) ;
 int TIFFClampDoubleToUInt32 (double) ;
 int TIFFClampDoubleToUInt8 (double) ;
 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFWriteDirectoryTagByteArray (TYPE_2__*,int*,int *,int ,int,int *) ;
 int TIFFWriteDirectoryTagDoubleArray (TYPE_2__*,int*,int *,int ,int,double*) ;
 int TIFFWriteDirectoryTagFloatArray (TYPE_2__*,int*,int *,int ,int,float*) ;
 int TIFFWriteDirectoryTagLongArray (TYPE_2__*,int*,int *,int ,int,int*) ;
 int TIFFWriteDirectoryTagSbyteArray (TYPE_2__*,int*,int *,int ,int,int *) ;
 int TIFFWriteDirectoryTagShortArray (TYPE_2__*,int*,int *,int ,int,int *) ;
 int TIFFWriteDirectoryTagSlongArray (TYPE_2__*,int*,int *,int ,int,int *) ;
 int TIFFWriteDirectoryTagSshortArray (TYPE_2__*,int*,int *,int ,int,int *) ;
 int _TIFFfree (void*) ;
 void* _TIFFmalloc (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagSampleformatArray(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, double* value)
{
 static const char module[] = "TIFFWriteDirectoryTagSampleformatArray";
 void* conv;
 uint32 i;
 int ok;
 conv = _TIFFmalloc(count*sizeof(double));
 if (conv == ((void*)0))
 {
  TIFFErrorExt(tif->tif_clientdata, module, "Out of memory");
  return (0);
 }

 switch (tif->tif_dir.td_sampleformat)
 {
  case 130:
   if (tif->tif_dir.td_bitspersample<=32)
   {
    for (i = 0; i < count; ++i)
     ((float*)conv)[i] = TIFFClampDoubleToFloat(value[i]);
    ok = TIFFWriteDirectoryTagFloatArray(tif,ndir,dir,tag,count,(float*)conv);
   }
   else
   {
    ok = TIFFWriteDirectoryTagDoubleArray(tif,ndir,dir,tag,count,value);
   }
   break;
  case 129:
   if (tif->tif_dir.td_bitspersample<=8)
   {
    for (i = 0; i < count; ++i)
     ((int8*)conv)[i] = TIFFClampDoubleToInt8(value[i]);
    ok = TIFFWriteDirectoryTagSbyteArray(tif,ndir,dir,tag,count,(int8*)conv);
   }
   else if (tif->tif_dir.td_bitspersample<=16)
   {
    for (i = 0; i < count; ++i)
     ((int16*)conv)[i] = TIFFClampDoubleToInt16(value[i]);
    ok = TIFFWriteDirectoryTagSshortArray(tif,ndir,dir,tag,count,(int16*)conv);
   }
   else
   {
    for (i = 0; i < count; ++i)
     ((int32*)conv)[i] = TIFFClampDoubleToInt32(value[i]);
    ok = TIFFWriteDirectoryTagSlongArray(tif,ndir,dir,tag,count,(int32*)conv);
   }
   break;
  case 128:
   if (tif->tif_dir.td_bitspersample<=8)
   {
    for (i = 0; i < count; ++i)
     ((uint8*)conv)[i] = TIFFClampDoubleToUInt8(value[i]);
    ok = TIFFWriteDirectoryTagByteArray(tif,ndir,dir,tag,count,(uint8*)conv);
   }
   else if (tif->tif_dir.td_bitspersample<=16)
   {
    for (i = 0; i < count; ++i)
     ((uint16*)conv)[i] = TIFFClampDoubleToUInt16(value[i]);
    ok = TIFFWriteDirectoryTagShortArray(tif,ndir,dir,tag,count,(uint16*)conv);
   }
   else
   {
    for (i = 0; i < count; ++i)
     ((uint32*)conv)[i] = TIFFClampDoubleToUInt32(value[i]);
    ok = TIFFWriteDirectoryTagLongArray(tif,ndir,dir,tag,count,(uint32*)conv);
   }
   break;
  default:
   ok = 0;
 }

 _TIFFfree(conv);
 return (ok);
}

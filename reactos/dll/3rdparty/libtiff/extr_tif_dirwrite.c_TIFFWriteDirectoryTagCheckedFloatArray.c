
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_5__ {int tif_flags; } ;
typedef int TIFFDirEntry ;
typedef TYPE_1__ TIFF ;


 int TIFFCvtNativeToIEEEFloat (TYPE_1__*,int,float**) ;
 int TIFFSwabArrayOfFloat (float*,int) ;
 int TIFFWriteDirectoryTagData (TYPE_1__*,int*,int *,int ,int ,int,int,float*) ;
 int TIFF_FLOAT ;
 int TIFF_SWAB ;
 int assert (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagCheckedFloatArray(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, float* value)
{
 assert(count<0x40000000);
 assert(sizeof(float)==4);
 TIFFCvtNativeToIEEEFloat(tif,count,&value);
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabArrayOfFloat(value,count);
 return(TIFFWriteDirectoryTagData(tif,ndir,dir,tag,TIFF_FLOAT,count,count*4,value));
}

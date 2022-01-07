
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


 int TIFFCvtNativeToIEEEDouble (TYPE_1__*,int,double**) ;
 int TIFFSwabArrayOfDouble (double*,int) ;
 int TIFFWriteDirectoryTagData (TYPE_1__*,int*,int *,int ,int ,int,int,double*) ;
 int TIFF_DOUBLE ;
 int TIFF_SWAB ;
 int assert (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagCheckedDoubleArray(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, double* value)
{
 assert(count<0x20000000);
 assert(sizeof(double)==8);
 TIFFCvtNativeToIEEEDouble(tif,count,&value);
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabArrayOfDouble(value,count);
 return(TIFFWriteDirectoryTagData(tif,ndir,dir,tag,TIFF_DOUBLE,count,count*8,value));
}

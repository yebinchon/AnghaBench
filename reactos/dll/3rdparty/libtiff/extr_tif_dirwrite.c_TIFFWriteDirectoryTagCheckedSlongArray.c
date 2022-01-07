
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
typedef int int32 ;
struct TYPE_4__ {int tif_flags; } ;
typedef int TIFFDirEntry ;
typedef TYPE_1__ TIFF ;


 int TIFFSwabArrayOfLong (int*,int) ;
 int TIFFWriteDirectoryTagData (TYPE_1__*,int*,int *,int ,int ,int,int,int *) ;
 int TIFF_SLONG ;
 int TIFF_SWAB ;
 int assert (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagCheckedSlongArray(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, int32* value)
{
 assert(count<0x40000000);
 assert(sizeof(int32)==4);
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabArrayOfLong((uint32*)value,count);
 return(TIFFWriteDirectoryTagData(tif,ndir,dir,tag,TIFF_SLONG,count,count*4,value));
}

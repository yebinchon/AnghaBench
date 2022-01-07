
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {int tif_flags; } ;
typedef int TIFFDirEntry ;
typedef TYPE_1__ TIFF ;


 int TIFFSwabArrayOfLong8 (int *,int) ;
 int TIFFWriteDirectoryTagData (TYPE_1__*,int*,int *,int ,int ,int,int,int *) ;
 int TIFF_BIGTIFF ;
 int TIFF_IFD8 ;
 int TIFF_SWAB ;
 int assert (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagCheckedIfd8Array(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, uint64* value)
{
 assert(count<0x20000000);
 assert(sizeof(uint64)==8);
 assert(tif->tif_flags&TIFF_BIGTIFF);
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabArrayOfLong8(value,count);
 return(TIFFWriteDirectoryTagData(tif,ndir,dir,tag,TIFF_IFD8,count,count*8,value));
}

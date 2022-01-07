
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {int tif_flags; int tif_clientdata; } ;
typedef int TIFFDirEntry ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,char*,char*) ;
 int TIFFSwabArrayOfLong8 (int *,int) ;
 int TIFFWriteDirectoryTagData (TYPE_1__*,int*,int *,int ,int ,int,int,int *) ;
 int TIFF_BIGTIFF ;
 int TIFF_LONG8 ;
 int TIFF_SWAB ;
 int assert (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagCheckedLong8Array(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, uint64* value)
{
 assert(count<0x20000000);
 assert(sizeof(uint64)==8);
 if( !(tif->tif_flags&TIFF_BIGTIFF) ) {
  TIFFErrorExt(tif->tif_clientdata,"TIFFWriteDirectoryTagCheckedLong8Array","LONG8 not allowed for ClassicTIFF");
  return(0);
 }
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabArrayOfLong8(value,count);
 return(TIFFWriteDirectoryTagData(tif,ndir,dir,tag,TIFF_LONG8,count,count*8,value));
}

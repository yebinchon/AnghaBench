
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {int tif_flags; } ;
typedef int TIFFDirEntry ;
typedef TYPE_1__ TIFF ;


 int TIFFSwabLong (int *) ;
 int TIFFWriteDirectoryTagData (TYPE_1__*,int *,int *,int ,int ,int,int,int *) ;
 int TIFF_LONG ;
 int TIFF_SWAB ;
 int assert (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagCheckedLong(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 value)
{
 uint32 m;
 assert(sizeof(uint32)==4);
 m=value;
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabLong(&m);
 return(TIFFWriteDirectoryTagData(tif,ndir,dir,tag,TIFF_LONG,1,4,&m));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int int8 ;
typedef int TIFFDirEntry ;
typedef int TIFF ;


 int TIFFWriteDirectoryTagData (int *,int *,int *,int ,int ,int ,int ,int *) ;
 int TIFF_SBYTE ;
 int assert (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagCheckedSbyteArray(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, int8* value)
{
 assert(sizeof(int8)==1);
 return(TIFFWriteDirectoryTagData(tif,ndir,dir,tag,TIFF_SBYTE,count,count,value));
}

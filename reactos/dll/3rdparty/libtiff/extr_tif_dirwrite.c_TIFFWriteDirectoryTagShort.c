
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int TIFFDirEntry ;
typedef int TIFF ;


 int TIFFWriteDirectoryTagCheckedShort (int *,int *,int *,int ,int ) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagShort(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint16 value)
{
 if (dir==((void*)0))
 {
  (*ndir)++;
  return(1);
 }
 return(TIFFWriteDirectoryTagCheckedShort(tif,ndir,dir,tag,value));
}

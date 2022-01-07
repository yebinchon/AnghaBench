
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int TIFFDirEntry ;
typedef int TIFF ;


 int TIFFWriteDirectoryTagCheckedLong (int *,int*,int *,int ,int) ;
 int TIFFWriteDirectoryTagCheckedShort (int *,int*,int *,int ,int ) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagShortLong(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 value)
{
 if (dir==((void*)0))
 {
  (*ndir)++;
  return(1);
 }
 if (value<=0xFFFF)
  return(TIFFWriteDirectoryTagCheckedShort(tif,ndir,dir,tag,(uint16)value));
 else
  return(TIFFWriteDirectoryTagCheckedLong(tif,ndir,dir,tag,value));
}

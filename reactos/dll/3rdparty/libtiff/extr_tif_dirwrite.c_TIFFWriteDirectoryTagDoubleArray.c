
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int TIFFDirEntry ;
typedef int TIFF ;


 int TIFFWriteDirectoryTagCheckedDoubleArray (int *,int *,int *,int ,int ,double*) ;

__attribute__((used)) static int TIFFWriteDirectoryTagDoubleArray(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint32 count, double* value)
{
 if (dir==((void*)0))
 {
  (*ndir)++;
  return(1);
 }
 return(TIFFWriteDirectoryTagCheckedDoubleArray(tif,ndir,dir,tag,count,value));
}

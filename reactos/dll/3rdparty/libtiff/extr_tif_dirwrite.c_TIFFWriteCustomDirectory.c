
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int TIFF ;


 int FALSE ;
 int TIFFWriteDirectorySec (int *,int ,int ,int *) ;

int
TIFFWriteCustomDirectory(TIFF* tif, uint64* pdiroff)
{
 return TIFFWriteDirectorySec(tif,FALSE,FALSE,pdiroff);
}

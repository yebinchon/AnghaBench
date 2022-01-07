
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFF ;


 int TIFFWriteDirectorySec (int *,int ,int ,int *) ;
 int TRUE ;

int
TIFFWriteDirectory(TIFF* tif)
{
 return TIFFWriteDirectorySec(tif,TRUE,TRUE,((void*)0));
}

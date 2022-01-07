
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFF ;


 int isTiled (int *) ;

int
TIFFIsTiled(TIFF* tif)
{
 return (isTiled(tif));
}

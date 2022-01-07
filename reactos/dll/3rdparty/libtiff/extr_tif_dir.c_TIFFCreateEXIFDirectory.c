
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFFFieldArray ;
typedef int TIFF ;


 int TIFFCreateCustomDirectory (int *,int const*) ;
 int * _TIFFGetExifFields () ;

int
TIFFCreateEXIFDirectory(TIFF* tif)
{
 const TIFFFieldArray* exifFieldArray;
 exifFieldArray = _TIFFGetExifFields();
 return TIFFCreateCustomDirectory(tif, exifFieldArray);
}

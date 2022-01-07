
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int toff_t ;
typedef int TIFFFieldArray ;
typedef int TIFF ;


 int TIFFReadCustomDirectory (int *,int ,int const*) ;
 int * _TIFFGetExifFields () ;

int
TIFFReadEXIFDirectory(TIFF* tif, toff_t diroff)
{
 const TIFFFieldArray* exifFieldArray;
 exifFieldArray = _TIFFGetExifFields();
 return TIFFReadCustomDirectory(tif, diroff, exifFieldArray);
}

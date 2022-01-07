
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFFFieldArray ;


 int const exifFieldArray ;

const TIFFFieldArray*
_TIFFGetExifFields(void)
{
 return(&exifFieldArray);
}

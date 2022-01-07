
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zip_uint16_t ;
typedef int * zip_encryption_implementation ;


 scalar_t__ ZIP_EM_TRAD_PKWARE ;
 int * zip_source_pkware ;

zip_encryption_implementation
_zip_get_encryption_implementation(zip_uint16_t em)
{
    if (em == ZIP_EM_TRAD_PKWARE)
 return zip_source_pkware;
    return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zip_int32_t ;
typedef int * zip_compression_implementation ;


 scalar_t__ ZIP_CM_DEFLATE ;
 scalar_t__ ZIP_CM_IS_DEFAULT (scalar_t__) ;
 int * zip_source_deflate ;

zip_compression_implementation
_zip_get_compression_implementation(zip_int32_t cm)
{
    if (cm == ZIP_CM_DEFLATE || ZIP_CM_IS_DEFAULT(cm))
 return zip_source_deflate;
    return ((void*)0);
}

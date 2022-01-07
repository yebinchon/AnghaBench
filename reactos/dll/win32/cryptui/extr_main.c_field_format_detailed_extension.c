
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef void* PCERT_EXTENSION ;
typedef int PCCERT_CONTEXT ;
typedef int * LPWSTR ;


 int CRYPT_FORMAT_STR_MULTI_LINE ;
 int CRYPT_FORMAT_STR_NO_HEX ;
 int * crypt_format_extension (void*,int) ;
 int * field_format_extension_hex_with_ascii (void*) ;

__attribute__((used)) static WCHAR *field_format_detailed_extension(PCCERT_CONTEXT cert, void *param)
{
    PCERT_EXTENSION ext = param;
    LPWSTR str = crypt_format_extension(ext,
     CRYPT_FORMAT_STR_MULTI_LINE | CRYPT_FORMAT_STR_NO_HEX);

    if (!str)
        str = field_format_extension_hex_with_ascii(ext);
    return str;
}

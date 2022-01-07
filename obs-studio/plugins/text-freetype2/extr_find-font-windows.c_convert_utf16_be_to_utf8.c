
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int string_len; int * string; } ;
typedef TYPE_1__ FT_SfntName ;


 int free (int*) ;
 int* malloc (size_t) ;
 char* wide_to_utf8 (int*,size_t) ;

__attribute__((used)) static char *convert_utf16_be_to_utf8(FT_SfntName *sfnt_name)
{
 size_t utf16_len = sfnt_name->string_len / 2;
 wchar_t *utf16_str = malloc((utf16_len + 1) * sizeof(wchar_t));
 char *utf8_str = ((void*)0);

 utf16_str[utf16_len] = 0;


 for (size_t i = 0; i < utf16_len; i++) {
  size_t pos = i * 2;
  wchar_t ch = *(wchar_t *)&sfnt_name->string[pos];

  utf16_str[i] = ((ch >> 8) & 0xFF) | ((ch << 8) & 0xFF00);
 }

 utf8_str = wide_to_utf8(utf16_str, utf16_len);

 free(utf16_str);
 return utf8_str;
}

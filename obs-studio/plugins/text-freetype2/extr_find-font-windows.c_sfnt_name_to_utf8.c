
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_4__ {int string_len; scalar_t__ string; int language_id; int encoding_id; int platform_id; } ;
typedef TYPE_1__ FT_SfntName ;


 size_t MultiByteToWideChar (unsigned int,int ,char*,int ,scalar_t__*,int) ;
 char* convert_utf16_be_to_utf8 (TYPE_1__*) ;
 int free (scalar_t__*) ;
 unsigned int get_code_page_for_font (int ,int ,int ) ;
 scalar_t__* malloc (size_t) ;
 char* wide_to_utf8 (scalar_t__*,size_t) ;

char *sfnt_name_to_utf8(FT_SfntName *sfnt_name)
{
 unsigned int code_page = get_code_page_for_font(sfnt_name->platform_id,
       sfnt_name->encoding_id,
       sfnt_name->language_id);

 char *utf8_str = ((void*)0);
 wchar_t *utf16_str;
 size_t utf16_len;

 if (code_page == 1201)
  return convert_utf16_be_to_utf8(sfnt_name);
 else if (code_page == 0)
  return ((void*)0);

 utf16_len = MultiByteToWideChar(code_page, 0, (char *)sfnt_name->string,
     sfnt_name->string_len, ((void*)0), 0);
 if (utf16_len) {
  utf16_str = malloc((utf16_len + 1) * sizeof(wchar_t));
  utf16_len = MultiByteToWideChar(code_page, 0,
      (char *)sfnt_name->string,
      sfnt_name->string_len,
      utf16_str, (int)utf16_len);

  if (utf16_len) {
   utf16_str[utf16_len] = 0;
   utf8_str = wide_to_utf8(utf16_str, utf16_len);
  }

  free(utf16_str);
 }

 return utf8_str;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 scalar_t__ WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int) ;
 int bfree (char*) ;
 char* bzalloc (size_t) ;

__attribute__((used)) static char *wide_to_utf8(const wchar_t *str, size_t len)
{
 size_t utf8_len;
 char *utf8_str = ((void*)0);

 utf8_len = (size_t)WideCharToMultiByte(CP_UTF8, 0, str, (int)len, ((void*)0),
            0, ((void*)0), 0);
 if (utf8_len) {
  utf8_str = bzalloc(utf8_len + 1);
  utf8_len = (size_t)WideCharToMultiByte(CP_UTF8, 0, str,
             (int)len, utf8_str,
             (int)utf8_len + 1, ((void*)0),
             0);

  if (!utf8_len) {
   bfree(utf8_str);
   utf8_str = ((void*)0);
  }
 }

 return utf8_str;
}

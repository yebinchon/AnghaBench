
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8string ;
typedef int pg_wchar ;


 int PG_UTF8 ;
 int memset (char*,int ,int) ;
 char* pg_any_to_server (char*,int ,int ) ;
 char* pstrdup (char*) ;
 int strlen (char*) ;
 int unicode_to_utf8 (int ,unsigned char*) ;

__attribute__((used)) static char *
unicode_to_sqlchar(pg_wchar c)
{
 char utf8string[8];
 char *result;

 memset(utf8string, 0, sizeof(utf8string));
 unicode_to_utf8(c, (unsigned char *) utf8string);

 result = pg_any_to_server(utf8string, strlen(utf8string), PG_UTF8);

 if (result == utf8string)
  result = pstrdup(result);
 return result;
}

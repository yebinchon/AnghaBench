
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 char* VARDATA_ANY (int const*) ;
 int VARSIZE_ANY_EXHDR (int const*) ;
 int pg_database_encoding_max_length () ;
 int pg_mblen (char const*) ;

__attribute__((used)) static bool
check_replace_text_has_escape_char(const text *replace_text)
{
 const char *p = VARDATA_ANY(replace_text);
 const char *p_end = p + VARSIZE_ANY_EXHDR(replace_text);

 if (pg_database_encoding_max_length() == 1)
 {
  for (; p < p_end; p++)
  {
   if (*p == '\\')
    return 1;
  }
 }
 else
 {
  for (; p < p_end; p += pg_mblen(p))
  {
   if (*p == '\\')
    return 1;
  }
 }

 return 0;
}

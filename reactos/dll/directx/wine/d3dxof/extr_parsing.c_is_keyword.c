
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parse_buffer ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _strnicmp (char*,char const*,int) ;
 scalar_t__ is_separator (char) ;
 int read_bytes (int *,char*,int) ;
 int rewind_bytes (int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static BOOL is_keyword(parse_buffer* buf, const char* keyword)
{
  char tmp[8];
  DWORD len = strlen(keyword);

  if (!read_bytes(buf, tmp, len))
    return FALSE;
  if (_strnicmp(tmp, keyword, len))
  {
    rewind_bytes(buf, len);
    return FALSE;
  }

  if (!read_bytes(buf, tmp, 1))
    return TRUE;
  if (is_separator(tmp[0]))
  {
    rewind_bytes(buf, 1);
    return TRUE;
  }
  rewind_bytes(buf, len+1);
  return FALSE;
}

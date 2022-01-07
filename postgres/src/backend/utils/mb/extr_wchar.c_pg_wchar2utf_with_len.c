
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_wchar ;


 int pg_utf_mblen (unsigned char*) ;
 int unicode_to_utf8 (scalar_t__ const,unsigned char*) ;

__attribute__((used)) static int
pg_wchar2utf_with_len(const pg_wchar *from, unsigned char *to, int len)
{
 int cnt = 0;

 while (len > 0 && *from)
 {
  int char_len;

  unicode_to_utf8(*from, to);
  char_len = pg_utf_mblen(to);
  cnt += char_len;
  to += char_len;
  from++;
  len--;
 }
 *to = 0;
 return cnt;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_wchar ;



__attribute__((used)) static int
pg_ascii2wchar_with_len(const unsigned char *from, pg_wchar *to, int len)
{
 int cnt = 0;

 while (len > 0 && *from)
 {
  *to++ = *from++;
  len--;
  cnt++;
 }
 *to = 0;
 return cnt;
}

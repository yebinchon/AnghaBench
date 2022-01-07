
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_wchar ;



__attribute__((used)) static int
pg_wchar2euc_with_len(const pg_wchar *from, unsigned char *to, int len)
{
 int cnt = 0;

 while (len > 0 && *from)
 {
  unsigned char c;

  if ((c = (*from >> 24)))
  {
   *to++ = c;
   *to++ = (*from >> 16) & 0xff;
   *to++ = (*from >> 8) & 0xff;
   *to++ = *from & 0xff;
   cnt += 4;
  }
  else if ((c = (*from >> 16)))
  {
   *to++ = c;
   *to++ = (*from >> 8) & 0xff;
   *to++ = *from & 0xff;
   cnt += 3;
  }
  else if ((c = (*from >> 8)))
  {
   *to++ = c;
   *to++ = *from & 0xff;
   cnt += 2;
  }
  else
  {
   *to++ = *from;
   cnt++;
  }
  from++;
  len--;
 }
 *to = 0;
 return cnt;
}

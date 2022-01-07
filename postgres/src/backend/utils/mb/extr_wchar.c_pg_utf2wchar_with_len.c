
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int pg_wchar ;



__attribute__((used)) static int
pg_utf2wchar_with_len(const unsigned char *from, pg_wchar *to, int len)
{
 int cnt = 0;
 uint32 c1,
    c2,
    c3,
    c4;

 while (len > 0 && *from)
 {
  if ((*from & 0x80) == 0)
  {
   *to = *from++;
   len--;
  }
  else if ((*from & 0xe0) == 0xc0)
  {
   if (len < 2)
    break;
   c1 = *from++ & 0x1f;
   c2 = *from++ & 0x3f;
   *to = (c1 << 6) | c2;
   len -= 2;
  }
  else if ((*from & 0xf0) == 0xe0)
  {
   if (len < 3)
    break;
   c1 = *from++ & 0x0f;
   c2 = *from++ & 0x3f;
   c3 = *from++ & 0x3f;
   *to = (c1 << 12) | (c2 << 6) | c3;
   len -= 3;
  }
  else if ((*from & 0xf8) == 0xf0)
  {
   if (len < 4)
    break;
   c1 = *from++ & 0x07;
   c2 = *from++ & 0x3f;
   c3 = *from++ & 0x3f;
   c4 = *from++ & 0x3f;
   *to = (c1 << 18) | (c2 << 12) | (c3 << 6) | c4;
   len -= 4;
  }
  else
  {

   *to = *from++;
   len--;
  }
  to++;
  cnt++;
 }
 *to = 0;
 return cnt;
}

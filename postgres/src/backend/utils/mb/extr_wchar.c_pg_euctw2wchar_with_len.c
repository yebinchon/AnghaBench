
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int pg_wchar ;


 scalar_t__ IS_HIGHBIT_SET (unsigned char const) ;
 unsigned char const SS2 ;
 unsigned char const SS3 ;

__attribute__((used)) static int
pg_euctw2wchar_with_len(const unsigned char *from, pg_wchar *to, int len)
{
 int cnt = 0;

 while (len > 0 && *from)
 {
  if (*from == SS2 && len >= 4)
  {
   from++;
   *to = (((uint32) SS2) << 24) | (*from++ << 16);
   *to |= *from++ << 8;
   *to |= *from++;
   len -= 4;
  }
  else if (*from == SS3 && len >= 3)
  {
   from++;
   *to = (SS3 << 16) | (*from++ << 8);
   *to |= *from++;
   len -= 3;
  }
  else if (IS_HIGHBIT_SET(*from) && len >= 2)
  {
   *to = *from++ << 8;
   *to |= *from++;
   len -= 2;
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

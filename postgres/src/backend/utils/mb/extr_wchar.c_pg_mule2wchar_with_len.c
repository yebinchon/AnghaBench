
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_wchar ;


 scalar_t__ IS_LC1 (unsigned char const) ;
 scalar_t__ IS_LC2 (unsigned char const) ;
 scalar_t__ IS_LCPRV1 (unsigned char const) ;
 scalar_t__ IS_LCPRV2 (unsigned char const) ;

__attribute__((used)) static int
pg_mule2wchar_with_len(const unsigned char *from, pg_wchar *to, int len)
{
 int cnt = 0;

 while (len > 0 && *from)
 {
  if (IS_LC1(*from) && len >= 2)
  {
   *to = *from++ << 16;
   *to |= *from++;
   len -= 2;
  }
  else if (IS_LCPRV1(*from) && len >= 3)
  {
   from++;
   *to = *from++ << 16;
   *to |= *from++;
   len -= 3;
  }
  else if (IS_LC2(*from) && len >= 3)
  {
   *to = *from++ << 16;
   *to |= *from++ << 8;
   *to |= *from++;
   len -= 3;
  }
  else if (IS_LCPRV2(*from) && len >= 4)
  {
   from++;
   *to = *from++ << 16;
   *to |= *from++ << 8;
   *to |= *from++;
   len -= 4;
  }
  else
  {
   *to = (unsigned char) *from++;
   len--;
  }
  to++;
  cnt++;
 }
 *to = 0;
 return cnt;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long grub_divmod64 (unsigned long long,int,unsigned int*) ;
 int grub_reverse (char*) ;

__attribute__((used)) static char *
grub_lltoa (char *str, int c, unsigned long long n)
{
  unsigned base = (c == 'x') ? 16 : 10;
  char *p;

  if ((long long) n < 0 && c == 'd')
    {
      n = (unsigned long long) (-((long long) n));
      *str++ = '-';
    }

  p = str;

  if (base == 16)
    do
      {
 unsigned d = (unsigned) (n & 0xf);
 *p++ = (d > 9) ? d + 'a' - 10 : d + '0';
      }
    while (n >>= 4);
  else

    do
      {
 unsigned m;

 n = grub_divmod64 (n, 10, &m);
 *p++ = m + '0';
      }
    while (n);

  *p = 0;

  grub_reverse (str);
  return p;
}

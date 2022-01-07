
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_uint64_t ;
typedef int grub_uint32_t ;



grub_uint64_t
grub_divmod64 (grub_uint64_t n, grub_uint32_t d, grub_uint32_t *r)
{




  unsigned bits = 64;
  unsigned long long q = 0;
  unsigned m = 0;


  if (n < 0xffffffff)
    {
      if (r)
 *r = ((grub_uint32_t) n) % d;

      return ((grub_uint32_t) n) / d;
    }

  while (bits--)
    {
      m <<= 1;

      if (n & (1ULL << 63))
 m |= 1;

      q <<= 1;
      n <<= 1;

      if (m >= d)
 {
   q |= 1;
   m -= d;
 }
    }

  if (r)
    *r = m;

  return q;
}

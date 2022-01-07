
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef size_t uint ;


 int LONG_SIZE ;
 int _ALIGNMENT_MASK ;
 int strlen (char const*) ;

__attribute__((used)) static size_t xstrlcpy(char *dest, const char *src, size_t n)
{
 if (!src || !dest || !n)
  return 0;

 ulong *s, *d;
 size_t len = strlen(src) + 1, blocks;
 const uint _WSHIFT = (LONG_SIZE == 8) ? 3 : 2;

 if (n > len)
  n = len;
 else if (len > n)

  len = n;





 if ((n >= LONG_SIZE) && (((ulong)src & _ALIGNMENT_MASK) == 0 &&
     ((ulong)dest & _ALIGNMENT_MASK) == 0)) {
  s = (ulong *)src;
  d = (ulong *)dest;
  blocks = n >> _WSHIFT;
  n &= LONG_SIZE - 1;

  while (blocks) {
   *d = *s;
   ++d, ++s;
   --blocks;
  }

  if (!n) {
   dest = (char *)d;
   *--dest = '\0';
   return len;
  }

  src = (char *)s;
  dest = (char *)d;
 }

 while (--n && (*dest = *src))
  ++dest, ++src;

 if (!n)
  *dest = '\0';

 return len;
}

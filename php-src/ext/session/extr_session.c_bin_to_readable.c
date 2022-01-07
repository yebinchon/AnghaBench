
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZEND_ASSERT (int ) ;
 int * hexconvtab ;

__attribute__((used)) static void bin_to_readable(unsigned char *in, size_t inlen, char *out, size_t outlen, char nbits)
{
 unsigned char *p, *q;
 unsigned short w;
 int mask;
 int have;

 p = (unsigned char *)in;
 q = (unsigned char *)in + inlen;

 w = 0;
 have = 0;
 mask = (1 << nbits) - 1;

 while (outlen--) {
  if (have < nbits) {
   if (p < q) {
    w |= *p++ << have;
    have += 8;
   } else {

    ZEND_ASSERT(0);
    break;
   }
  }


  *out++ = hexconvtab[w & mask];
  w >>= nbits;
  have -= nbits;
 }

 *out = '\0';
}

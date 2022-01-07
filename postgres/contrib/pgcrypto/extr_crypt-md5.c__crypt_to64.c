
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _crypt_a64 ;

__attribute__((used)) static void
_crypt_to64(char *s, unsigned long v, int n)
{
 while (--n >= 0)
 {
  *s++ = _crypt_a64[v & 0x3f];
  v >>= 6;
 }
}

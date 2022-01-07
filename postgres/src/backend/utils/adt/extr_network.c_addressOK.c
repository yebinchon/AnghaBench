
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int PGSQL_AF_INET ;

__attribute__((used)) static bool
addressOK(unsigned char *a, int bits, int family)
{
 int byte;
 int nbits;
 int maxbits;
 int maxbytes;
 unsigned char mask;

 if (family == PGSQL_AF_INET)
 {
  maxbits = 32;
  maxbytes = 4;
 }
 else
 {
  maxbits = 128;
  maxbytes = 16;
 }
 Assert(bits <= maxbits);

 if (bits == maxbits)
  return 1;

 byte = bits / 8;

 nbits = bits % 8;
 mask = 0xff;
 if (bits != 0)
  mask >>= nbits;

 while (byte < maxbytes)
 {
  if ((a[byte] & mask) != 0)
   return 0;
  mask = 0xff;
  byte++;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
bitncommon(const unsigned char *l, const unsigned char *r, int n)
{
 int byte,
    nbits;


 nbits = n % 8;


 for (byte = 0; byte < n / 8; byte++)
 {
  if (l[byte] != r[byte])
  {

   nbits = 7;
   break;
  }
 }


 if (nbits != 0)
 {

  unsigned int diff = l[byte] ^ r[byte];


  while ((diff >> (8 - nbits)) != 0)
   nbits--;
 }

 return (8 * byte) + nbits;
}

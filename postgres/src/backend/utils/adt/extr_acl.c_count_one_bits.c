
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AclMode ;



__attribute__((used)) static int
count_one_bits(AclMode mask)
{
 int nbits = 0;


 while (mask)
 {
  if (mask & 1)
   nbits++;
  mask >>= 1;
 }
 return nbits;
}

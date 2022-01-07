
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;



__attribute__((used)) static int32
partition_hbound_cmp(int modulus1, int remainder1, int modulus2, int remainder2)
{
 if (modulus1 < modulus2)
  return -1;
 if (modulus1 > modulus2)
  return 1;
 if (modulus1 == modulus2 && remainder1 != remainder2)
  return (remainder1 > remainder2) ? 1 : -1;
 return 0;
}

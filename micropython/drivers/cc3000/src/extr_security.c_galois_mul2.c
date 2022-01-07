
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;



UINT8 galois_mul2(UINT8 value)
{
 if (value>>7)
 {
  value = value << 1;
  return (value^0x1b);
 } else
  return value<<1;
}

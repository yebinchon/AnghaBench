
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int macaddr8 ;



__attribute__((used)) static uint64
mac8_2_uint64(macaddr8 *m)
{
 unsigned char *mi = (unsigned char *) m;
 uint64 res = 0;
 int i;

 for (i = 0; i < 8; i++)
  res += (((uint64) mi[i]) << ((uint64) ((7 - i) * 8)));
 return res;
}

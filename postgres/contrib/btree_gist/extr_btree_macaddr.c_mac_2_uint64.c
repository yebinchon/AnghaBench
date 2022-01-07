
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int macaddr ;



__attribute__((used)) static uint64
mac_2_uint64(macaddr *m)
{
 unsigned char *mi = (unsigned char *) m;
 uint64 res = 0;
 int i;

 for (i = 0; i < 6; i++)
  res += (((uint64) mi[i]) << ((uint64) ((5 - i) * 8)));
 return res;
}

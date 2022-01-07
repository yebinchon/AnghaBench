
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;



__attribute__((used)) static uint8 *
check_eme_pkcs1_v15(uint8 *data, int len)
{
 uint8 *data_end = data + len;
 uint8 *p = data;
 int rnd = 0;

 if (len < 1 + 8 + 1)
  return ((void*)0);

 if (*p++ != 2)
  return ((void*)0);

 while (p < data_end && *p)
 {
  p++;
  rnd++;
 }

 if (p == data_end)
  return ((void*)0);
 if (*p != 0)
  return ((void*)0);
 if (rnd < 8)
  return ((void*)0);
 return p + 1;
}

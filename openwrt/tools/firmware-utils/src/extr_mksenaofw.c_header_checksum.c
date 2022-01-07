
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int header_checksum(void *data, size_t len)
{
 int sum = 0;
 size_t i;

 if (data != ((void*)0) && len > 0) {
  for (i = 0; i < len; ++i)
   sum += ((unsigned char *)data)[i];
  return sum;
 }

 return -1;
}

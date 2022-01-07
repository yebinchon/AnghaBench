
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
tarChecksum(char *header)
{
 int i,
    sum;






 sum = 8 * ' ';
 for (i = 0; i < 512; i++)
  if (i < 148 || i >= 156)
   sum += 0xFF & header[i];
 return sum;
}

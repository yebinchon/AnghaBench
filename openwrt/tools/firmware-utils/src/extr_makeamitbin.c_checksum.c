
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short READ_SHORT (unsigned char*,long) ;

unsigned short checksum(unsigned char *data, long size)
{
 long n;
 unsigned short d, cs = 0;
 for (n = 0; n < size; n += 2)
 {
  d = READ_SHORT(data, n);
  cs += d;
  if (cs < d)
   cs++;
 }
 if (size & 1)
 {
  d = data[n];
  cs += d;
  if (cs < d)
   cs++;
 }
 return cs;
}

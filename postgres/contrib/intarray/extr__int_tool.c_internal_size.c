
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;
typedef int a ;


 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;

int
internal_size(int *a, int len)
{
 int i;
 int64 size = 0;

 for (i = 0; i < len; i += 2)
 {
  if (!i || a[i] != a[i - 1])
   size += (int64) (a[i + 1]) - (int64) (a[i]) + 1;
 }

 if (size > (int64) INT_MAX || size < (int64) INT_MIN)
  return -1;
 return (int) size;
}

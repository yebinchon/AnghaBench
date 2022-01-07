
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int128 ;



__attribute__((used)) static inline int
my_int128_compare(int128 x, int128 y)
{
 if (x < y)
  return -1;
 if (x > y)
  return 1;
 return 0;
}

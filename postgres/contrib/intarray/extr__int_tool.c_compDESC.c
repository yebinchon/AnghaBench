
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;



int
compDESC(const void *a, const void *b)
{
 if (*(const int32 *) a == *(const int32 *) b)
  return 0;
 return (*(const int32 *) a < *(const int32 *) b) ? 1 : -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OffsetNumber ;



__attribute__((used)) static int
cmpOffsetNumbers(const void *a, const void *b)
{
 if (*(const OffsetNumber *) a == *(const OffsetNumber *) b)
  return 0;
 return (*(const OffsetNumber *) a > *(const OffsetNumber *) b) ? 1 : -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ float8 ;



__attribute__((used)) static int
float8_qsort_cmp(const void *a1, const void *a2)
{
 const float8 *f1 = (const float8 *) a1;
 const float8 *f2 = (const float8 *) a2;

 if (*f1 < *f2)
  return -1;
 else if (*f1 == *f2)
  return 0;
 else
  return 1;
}

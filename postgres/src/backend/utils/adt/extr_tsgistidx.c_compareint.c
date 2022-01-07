
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;



__attribute__((used)) static int
compareint(const void *va, const void *vb)
{
 int32 a = *((const int32 *) va);
 int32 b = *((const int32 *) vb);

 if (a == b)
  return 0;
 return (a > b) ? 1 : -1;
}

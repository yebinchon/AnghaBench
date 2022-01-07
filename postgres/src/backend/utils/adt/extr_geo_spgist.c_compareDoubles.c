
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ float8 ;



__attribute__((used)) static int
compareDoubles(const void *a, const void *b)
{
 float8 x = *(float8 *) a;
 float8 y = *(float8 *) b;

 if (x == y)
  return 0;
 return (x > y) ? 1 : -1;
}

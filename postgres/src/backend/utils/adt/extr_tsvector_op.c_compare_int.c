
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
compare_int(const void *va, const void *vb)
{
 int a = *((const int *) va);
 int b = *((const int *) vb);

 if (a == b)
  return 0;
 return (a > b) ? 1 : -1;
}

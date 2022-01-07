
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
float_compare_desc(const void *key1, const void *key2)
{
 float d1 = *((const float *) key1);
 float d2 = *((const float *) key2);

 if (d1 > d2)
  return -1;
 else if (d1 < d2)
  return 1;
 else
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;


 scalar_t__ float8_gt (int ,int ) ;
 scalar_t__ float8_lt (int ,int ) ;

int
float8_cmp_internal(float8 a, float8 b)
{
 if (float8_gt(a, b))
  return 1;
 if (float8_lt(a, b))
  return -1;
 return 0;
}

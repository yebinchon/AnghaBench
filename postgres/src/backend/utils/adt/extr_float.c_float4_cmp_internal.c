
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float4 ;


 scalar_t__ float4_gt (int ,int ) ;
 scalar_t__ float4_lt (int ,int ) ;

int
float4_cmp_internal(float4 a, float4 b)
{
 if (float4_gt(a, b))
  return 1;
 if (float4_lt(a, b))
  return -1;
 return 0;
}

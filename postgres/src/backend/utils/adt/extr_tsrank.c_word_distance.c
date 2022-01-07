
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef float float4 ;


 double exp (float) ;

__attribute__((used)) static float4
word_distance(int32 w)
{
 if (w > 100)
  return 1e-30f;

 return 1.0 / (1.005 + 0.05 * exp(((float4) w) / 1.5 - 2));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;



__attribute__((used)) static uint map_float_to_uint(float x, float in_min, float in_max, uint out_min, uint out_max)
{
 return (int)((x - in_min) * (float)(out_max - out_min) / (in_max - in_min) + (float)out_min);
}

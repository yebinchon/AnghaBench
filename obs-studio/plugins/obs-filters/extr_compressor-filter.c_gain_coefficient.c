
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float uint32_t ;


 scalar_t__ exp (float) ;

__attribute__((used)) static inline float gain_coefficient(uint32_t sample_rate, float time)
{
 return (float)exp(-1.0f / (sample_rate * time));
}

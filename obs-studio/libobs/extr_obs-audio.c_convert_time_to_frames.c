
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;



__attribute__((used)) static inline size_t convert_time_to_frames(size_t sample_rate, uint64_t t)
{
 return (size_t)(t * (uint64_t)sample_rate / 1000000000ULL);
}

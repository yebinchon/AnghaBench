
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long const uint64_t ;



__attribute__((used)) static inline size_t conv_time_to_frames(const size_t sample_rate,
      const uint64_t duration)
{
 return (size_t)(duration * (uint64_t)sample_rate / 1000000000ULL);
}

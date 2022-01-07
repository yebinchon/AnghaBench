
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int obs_source_t ;


 float calc_time (int *,unsigned long long) ;

__attribute__((used)) static inline float get_sample_time(obs_source_t *transition,
        size_t sample_rate, size_t sample,
        uint64_t ts)
{
 uint64_t sample_ts_offset =
  (uint64_t)sample * 1000000000ULL / (uint64_t)sample_rate;
 uint64_t i_ts = ts + sample_ts_offset;
 return calc_time(transition, i_ts);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ os_gettime_ns () ;
 scalar_t__ samples_to_ns (size_t,int ) ;

__attribute__((used)) static inline uint64_t get_sample_time(size_t frames, uint_fast32_t rate)
{
 return os_gettime_ns() - samples_to_ns(frames, rate);
}

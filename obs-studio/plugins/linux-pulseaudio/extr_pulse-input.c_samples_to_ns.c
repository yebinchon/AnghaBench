
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_fast32_t ;
typedef size_t uint64_t ;


 size_t NSEC_PER_SEC ;

__attribute__((used)) static inline uint64_t samples_to_ns(size_t frames, uint_fast32_t rate)
{
 return frames * NSEC_PER_SEC / rate;
}

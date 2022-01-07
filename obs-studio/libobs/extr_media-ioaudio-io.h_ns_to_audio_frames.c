
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int low; } ;
typedef TYPE_1__ util_uint128_t ;
typedef int uint64_t ;


 TYPE_1__ util_div128_32 (TYPE_1__,int) ;
 TYPE_1__ util_mul64_64 (int ,size_t) ;

__attribute__((used)) static inline uint64_t ns_to_audio_frames(size_t sample_rate, uint64_t frames)
{
 util_uint128_t val;
 val = util_mul64_64(frames, sample_rate);
 val = util_div128_32(val, 1000000000);
 return val.low;
}

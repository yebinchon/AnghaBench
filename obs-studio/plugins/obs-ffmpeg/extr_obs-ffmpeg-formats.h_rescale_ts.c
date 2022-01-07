
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int time_base; } ;
typedef int AVRational ;
typedef TYPE_1__ AVCodecContext ;


 int AV_ROUND_NEAR_INF ;
 int AV_ROUND_PASS_MINMAX ;
 int av_rescale_q_rnd (int ,int ,int ,int) ;

__attribute__((used)) static inline int64_t rescale_ts(int64_t val, AVCodecContext *context,
     AVRational new_base)
{
 return av_rescale_q_rnd(val, context->time_base, new_base,
    AV_ROUND_NEAR_INF | AV_ROUND_PASS_MINMAX);
}

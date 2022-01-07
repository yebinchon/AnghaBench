
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ff_decoder {TYPE_1__* stream; int start_pts; } ;
typedef int int64_t ;
struct TYPE_2__ {int time_base; } ;


 int AV_TIME_BASE_Q ;
 int av_rescale_q (int ,int ,int ) ;

__attribute__((used)) static inline void set_decoder_start_time(struct ff_decoder *decoder,
                                          int64_t start_time)
{
 if (decoder)
  decoder->start_pts = av_rescale_q(start_time, AV_TIME_BASE_Q,
                                    decoder->stream->time_base);
}

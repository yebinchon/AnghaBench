
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_decoder {double current_pts_time; double current_pts; } ;


 double av_gettime () ;

double ff_decoder_clock(void *opaque)
{
 struct ff_decoder *decoder = opaque;
 double delta = (av_gettime() - decoder->current_pts_time) / 1000000.0;
 return decoder->current_pts + delta;
}

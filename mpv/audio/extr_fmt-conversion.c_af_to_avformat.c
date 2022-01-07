
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_2__ {int fmt; int sample_fmt; } ;


 int AV_SAMPLE_FMT_NONE ;
 TYPE_1__* audio_conversion_map ;

enum AVSampleFormat af_to_avformat(int fmt)
{
    for (int i = 0; audio_conversion_map[i].fmt; i++) {
        if (audio_conversion_map[i].fmt == fmt)
            return audio_conversion_map[i].sample_fmt;
    }
    return AV_SAMPLE_FMT_NONE;
}

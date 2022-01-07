
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_3__ {int* sample_fmts; } ;
typedef TYPE_1__ AVCodec ;


 int const AV_SAMPLE_FMT_NONE ;
 int af_from_avformat (int const) ;

__attribute__((used)) static bool supports_format(const AVCodec *codec, int format)
{
    for (const enum AVSampleFormat *sampleformat = codec->sample_fmts;
         sampleformat && *sampleformat != AV_SAMPLE_FMT_NONE;
         sampleformat++)
    {
        if (af_from_avformat(*sampleformat) == format)
            return 1;
    }
    return 0;
}

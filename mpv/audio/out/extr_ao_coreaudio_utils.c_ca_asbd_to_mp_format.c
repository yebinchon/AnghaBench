
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mChannelsPerFrame; int mSampleRate; int member_0; } ;
typedef TYPE_1__ AudioStreamBasicDescription ;


 int AF_FORMAT_COUNT ;
 int AF_FORMAT_S_AC3 ;
 scalar_t__ af_fmt_is_spdif (int) ;
 scalar_t__ ca_asbd_equals (TYPE_1__*,TYPE_1__ const*) ;
 int ca_fill_asbd_raw (TYPE_1__*,int,int ,int ) ;

int ca_asbd_to_mp_format(const AudioStreamBasicDescription *asbd)
{
    for (int fmt = 1; fmt < AF_FORMAT_COUNT; fmt++) {
        AudioStreamBasicDescription mp_asbd = {0};
        ca_fill_asbd_raw(&mp_asbd, fmt, asbd->mSampleRate, asbd->mChannelsPerFrame);
        if (ca_asbd_equals(&mp_asbd, asbd))
            return af_fmt_is_spdif(fmt) ? AF_FORMAT_S_AC3 : fmt;
    }
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mFormatFlags; scalar_t__ mBitsPerChannel; scalar_t__ mBytesPerPacket; scalar_t__ mChannelsPerFrame; scalar_t__ mSampleRate; int mFormatID; } ;
typedef TYPE_1__ AudioStreamBasicDescription ;


 scalar_t__ ca_formatid_is_compressed (int ) ;
 scalar_t__ ca_normalize_formatid (int ) ;
 int kAudioFormatFlagIsBigEndian ;
 int kAudioFormatFlagIsFloat ;
 int kAudioFormatFlagIsPacked ;
 int kAudioFormatFlagIsSignedInteger ;

bool ca_asbd_equals(const AudioStreamBasicDescription *a,
                    const AudioStreamBasicDescription *b)
{
    int flags = kAudioFormatFlagIsPacked | kAudioFormatFlagIsFloat |
                kAudioFormatFlagIsSignedInteger | kAudioFormatFlagIsBigEndian;
    bool spdif = ca_formatid_is_compressed(a->mFormatID) &&
                 ca_formatid_is_compressed(b->mFormatID);

    return (a->mFormatFlags & flags) == (b->mFormatFlags & flags) &&
           a->mBitsPerChannel == b->mBitsPerChannel &&
           ca_normalize_formatid(a->mFormatID) ==
                ca_normalize_formatid(b->mFormatID) &&
           (spdif || a->mBytesPerPacket == b->mBytesPerPacket) &&
           (spdif || a->mChannelsPerFrame == b->mChannelsPerFrame) &&
           a->mSampleRate == b->mSampleRate;
}

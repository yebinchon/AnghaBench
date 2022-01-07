
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mSampleRate; int mChannelsPerFrame; int mBitsPerChannel; int mFramesPerPacket; int mBytesPerPacket; int mBytesPerFrame; int mFormatFlags; int mFormatID; } ;
typedef TYPE_1__ AudioStreamBasicDescription ;


 scalar_t__ BIG_ENDIAN ;
 scalar_t__ BYTE_ORDER ;
 scalar_t__ af_fmt_is_float (int) ;
 scalar_t__ af_fmt_is_planar (int) ;
 scalar_t__ af_fmt_is_spdif (int) ;
 int af_fmt_is_unsigned (int) ;
 int af_fmt_to_bytes (int) ;
 int kAudioFormat60958AC3 ;
 int kAudioFormatFlagIsBigEndian ;
 int kAudioFormatFlagIsFloat ;
 int kAudioFormatFlagIsNonInterleaved ;
 int kAudioFormatFlagIsPacked ;
 int kAudioFormatFlagIsSignedInteger ;
 int kAudioFormatLinearPCM ;

__attribute__((used)) static void ca_fill_asbd_raw(AudioStreamBasicDescription *asbd, int mp_format,
                             int samplerate, int num_channels)
{
    asbd->mSampleRate = samplerate;

    asbd->mFormatID = af_fmt_is_spdif(mp_format) ?
                              kAudioFormat60958AC3 :
                              kAudioFormatLinearPCM;
    asbd->mChannelsPerFrame = num_channels;
    asbd->mBitsPerChannel = af_fmt_to_bytes(mp_format) * 8;
    asbd->mFormatFlags = kAudioFormatFlagIsPacked;

    int channels_per_buffer = num_channels;
    if (af_fmt_is_planar(mp_format)) {
        asbd->mFormatFlags |= kAudioFormatFlagIsNonInterleaved;
        channels_per_buffer = 1;
    }

    if (af_fmt_is_float(mp_format)) {
        asbd->mFormatFlags |= kAudioFormatFlagIsFloat;
    } else if (!af_fmt_is_unsigned(mp_format)) {
        asbd->mFormatFlags |= kAudioFormatFlagIsSignedInteger;
    }

    if (BYTE_ORDER == BIG_ENDIAN)
        asbd->mFormatFlags |= kAudioFormatFlagIsBigEndian;

    asbd->mFramesPerPacket = 1;
    asbd->mBytesPerPacket = asbd->mBytesPerFrame =
        asbd->mFramesPerPacket * channels_per_buffer *
        (asbd->mBitsPerChannel / 8);
}

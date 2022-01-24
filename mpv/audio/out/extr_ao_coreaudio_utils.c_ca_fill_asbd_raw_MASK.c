#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mSampleRate; int mChannelsPerFrame; int mBitsPerChannel; int mFramesPerPacket; int mBytesPerPacket; int mBytesPerFrame; int /*<<< orphan*/  mFormatFlags; int /*<<< orphan*/  mFormatID; } ;
typedef  TYPE_1__ AudioStreamBasicDescription ;

/* Variables and functions */
 scalar_t__ BIG_ENDIAN ; 
 scalar_t__ BYTE_ORDER ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  kAudioFormat60958AC3 ; 
 int /*<<< orphan*/  kAudioFormatFlagIsBigEndian ; 
 int /*<<< orphan*/  kAudioFormatFlagIsFloat ; 
 int /*<<< orphan*/  kAudioFormatFlagIsNonInterleaved ; 
 int /*<<< orphan*/  kAudioFormatFlagIsPacked ; 
 int /*<<< orphan*/  kAudioFormatFlagIsSignedInteger ; 
 int /*<<< orphan*/  kAudioFormatLinearPCM ; 

__attribute__((used)) static void FUNC5(AudioStreamBasicDescription *asbd, int mp_format,
                             int samplerate, int num_channels)
{
    asbd->mSampleRate       = samplerate;
    // Set "AC3" for other spdif formats too - unknown if that works.
    asbd->mFormatID         = FUNC2(mp_format) ?
                              kAudioFormat60958AC3 :
                              kAudioFormatLinearPCM;
    asbd->mChannelsPerFrame = num_channels;
    asbd->mBitsPerChannel   = FUNC4(mp_format) * 8;
    asbd->mFormatFlags      = kAudioFormatFlagIsPacked;

    int channels_per_buffer = num_channels;
    if (FUNC1(mp_format)) {
        asbd->mFormatFlags |= kAudioFormatFlagIsNonInterleaved;
        channels_per_buffer = 1;
    }

    if (FUNC0(mp_format)) {
        asbd->mFormatFlags |= kAudioFormatFlagIsFloat;
    } else if (!FUNC3(mp_format)) {
        asbd->mFormatFlags |= kAudioFormatFlagIsSignedInteger;
    }

    if (BYTE_ORDER == BIG_ENDIAN)
        asbd->mFormatFlags |= kAudioFormatFlagIsBigEndian;

    asbd->mFramesPerPacket = 1;
    asbd->mBytesPerPacket = asbd->mBytesPerFrame =
        asbd->mFramesPerPacket * channels_per_buffer *
        (asbd->mBitsPerChannel / 8);
}
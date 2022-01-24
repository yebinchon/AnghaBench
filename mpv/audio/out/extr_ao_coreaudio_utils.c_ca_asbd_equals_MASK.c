#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int mFormatFlags; scalar_t__ mBitsPerChannel; scalar_t__ mBytesPerPacket; scalar_t__ mChannelsPerFrame; scalar_t__ mSampleRate; int /*<<< orphan*/  mFormatID; } ;
typedef  TYPE_1__ AudioStreamBasicDescription ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int kAudioFormatFlagIsBigEndian ; 
 int kAudioFormatFlagIsFloat ; 
 int kAudioFormatFlagIsPacked ; 
 int kAudioFormatFlagIsSignedInteger ; 

bool FUNC2(const AudioStreamBasicDescription *a,
                    const AudioStreamBasicDescription *b)
{
    int flags = kAudioFormatFlagIsPacked | kAudioFormatFlagIsFloat |
                kAudioFormatFlagIsSignedInteger | kAudioFormatFlagIsBigEndian;
    bool spdif = FUNC0(a->mFormatID) &&
                 FUNC0(b->mFormatID);

    return (a->mFormatFlags & flags) == (b->mFormatFlags & flags) &&
           a->mBitsPerChannel == b->mBitsPerChannel &&
           FUNC1(a->mFormatID) ==
                FUNC1(b->mFormatID) &&
           (spdif || a->mBytesPerPacket == b->mBytesPerPacket) &&
           (spdif || a->mChannelsPerFrame == b->mChannelsPerFrame) &&
           a->mSampleRate == b->mSampleRate;
}
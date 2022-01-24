#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct priv {size_t stream_idx; scalar_t__ spdif_hack; scalar_t__ hw_latency_us; } ;
struct TYPE_5__ {int num; } ;
struct ao {int sstride; TYPE_1__ channels; struct priv* priv; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {int mDataByteSize; int /*<<< orphan*/  mData; } ;
struct TYPE_6__ {TYPE_3__* mBuffers; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/  AudioTimeStamp ;
typedef  int /*<<< orphan*/  AudioDeviceID ;
typedef  TYPE_2__ AudioBufferList ;
typedef  TYPE_3__ AudioBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ao*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  kAudioHardwareUnspecifiedError ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  noErr ; 

__attribute__((used)) static OSStatus FUNC6(
        AudioDeviceID device, const AudioTimeStamp *ts,
        const void *in_data, const AudioTimeStamp *in_ts,
        AudioBufferList *out_data, const AudioTimeStamp *out_ts, void *ctx)
{
    struct ao *ao    = ctx;
    struct priv *p   = ao->priv;
    AudioBuffer buf  = out_data->mBuffers[p->stream_idx];
    int requested    = buf.mDataByteSize;
    int sstride      = p->spdif_hack ? 4 * ao->channels.num : ao->sstride;

    int pseudo_frames = requested / sstride;

    // we expect the callback to read full frames, which are aligned accordingly
    if (pseudo_frames * sstride != requested) {
        FUNC0(ao, "Unsupported unaligned read of %d bytes.\n", requested);
        return kAudioHardwareUnspecifiedError;
    }

    int64_t end = FUNC5();
    end += p->hw_latency_us + FUNC4(ts)
        + FUNC3(ao, pseudo_frames);

    FUNC1(ao, &buf.mData, pseudo_frames, end);

    if (p->spdif_hack)
        FUNC2(buf.mData, pseudo_frames * ao->channels.num);

    return noErr;
}
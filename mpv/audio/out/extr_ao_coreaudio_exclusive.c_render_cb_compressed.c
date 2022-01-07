
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct priv {size_t stream_idx; scalar_t__ spdif_hack; scalar_t__ hw_latency_us; } ;
struct TYPE_5__ {int num; } ;
struct ao {int sstride; TYPE_1__ channels; struct priv* priv; } ;
typedef int int64_t ;
struct TYPE_7__ {int mDataByteSize; int mData; } ;
struct TYPE_6__ {TYPE_3__* mBuffers; } ;
typedef int OSStatus ;
typedef int AudioTimeStamp ;
typedef int AudioDeviceID ;
typedef TYPE_2__ AudioBufferList ;
typedef TYPE_3__ AudioBuffer ;


 int MP_ERR (struct ao*,char*,int) ;
 int ao_read_data (struct ao*,int *,int,int ) ;
 int bad_hack_mygodwhy (int ,int) ;
 scalar_t__ ca_frames_to_us (struct ao*,int) ;
 scalar_t__ ca_get_latency (int const*) ;
 int kAudioHardwareUnspecifiedError ;
 int mp_time_us () ;
 int noErr ;

__attribute__((used)) static OSStatus render_cb_compressed(
        AudioDeviceID device, const AudioTimeStamp *ts,
        const void *in_data, const AudioTimeStamp *in_ts,
        AudioBufferList *out_data, const AudioTimeStamp *out_ts, void *ctx)
{
    struct ao *ao = ctx;
    struct priv *p = ao->priv;
    AudioBuffer buf = out_data->mBuffers[p->stream_idx];
    int requested = buf.mDataByteSize;
    int sstride = p->spdif_hack ? 4 * ao->channels.num : ao->sstride;

    int pseudo_frames = requested / sstride;


    if (pseudo_frames * sstride != requested) {
        MP_ERR(ao, "Unsupported unaligned read of %d bytes.\n", requested);
        return kAudioHardwareUnspecifiedError;
    }

    int64_t end = mp_time_us();
    end += p->hw_latency_us + ca_get_latency(ts)
        + ca_frames_to_us(ao, pseudo_frames);

    ao_read_data(ao, &buf.mData, pseudo_frames, end);

    if (p->spdif_hack)
        bad_hack_mygodwhy(buf.mData, pseudo_frames * ao->channels.num);

    return noErr;
}

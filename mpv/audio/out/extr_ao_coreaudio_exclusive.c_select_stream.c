
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct priv {int stream_idx; int stream; scalar_t__ spdif_hack; int device; } ;
struct ao {int format; struct priv* priv; } ;
typedef int OSStatus ;
typedef int AudioStreamID ;


 int CA_GET (int ,int ,scalar_t__*) ;
 int CA_GET_ARY_O (int ,int ,int **,size_t*) ;
 int CHECK_CA_ERROR (char*) ;
 int CHECK_CA_WARN (char*) ;
 int MP_ERR (struct ao*,char*) ;
 int MP_VERBOSE (struct ao*,char*,int,...) ;
 scalar_t__ af_fmt_is_pcm (int ) ;
 scalar_t__ ca_stream_supports_compressed (struct ao*,int ) ;
 int kAudioDevicePropertyStreams ;
 int kAudioStreamPropertyDirection ;
 int noErr ;
 int talloc_free (int *) ;

__attribute__((used)) static int select_stream(struct ao *ao)
{
    struct priv *p = ao->priv;

    AudioStreamID *streams;
    size_t n_streams;
    OSStatus err;


    err = CA_GET_ARY_O(p->device, kAudioDevicePropertyStreams,
                       &streams, &n_streams);
    CHECK_CA_ERROR("could not get number of streams");
    for (int i = 0; i < n_streams; i++) {
        uint32_t direction;
        err = CA_GET(streams[i], kAudioStreamPropertyDirection, &direction);
        CHECK_CA_WARN("could not get stream direction");
        if (err == noErr && direction != 0) {
            MP_VERBOSE(ao, "Substream %d is not an output stream.\n", i);
            continue;
        }

        if (af_fmt_is_pcm(ao->format) || p->spdif_hack ||
            ca_stream_supports_compressed(ao, streams[i]))
        {
            MP_VERBOSE(ao, "Using substream %d/%zd.\n", i, n_streams);
            p->stream = streams[i];
            p->stream_idx = i;
            break;
        }
    }

    talloc_free(streams);

    if (p->stream_idx < 0) {
        MP_ERR(ao, "No useable substream found.\n");
        goto coreaudio_error;
    }

    return 0;

coreaudio_error:
    return -1;
}

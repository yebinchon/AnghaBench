#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct priv {int stream_idx; int /*<<< orphan*/  stream; scalar_t__ spdif_hack; int /*<<< orphan*/  device; } ;
struct ao {int /*<<< orphan*/  format; struct priv* priv; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/  AudioStreamID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ao*,char*,int,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ao*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kAudioDevicePropertyStreams ; 
 int /*<<< orphan*/  kAudioStreamPropertyDirection ; 
 int /*<<< orphan*/  noErr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ao *ao)
{
    struct priv *p = ao->priv;

    AudioStreamID *streams;
    size_t n_streams;
    OSStatus err;

    /* Get a list of all the streams on this device. */
    err = FUNC1(p->device, kAudioDevicePropertyStreams,
                       &streams, &n_streams);
    FUNC2("could not get number of streams");
    for (int i = 0; i < n_streams; i++) {
        uint32_t direction;
        err = FUNC0(streams[i], kAudioStreamPropertyDirection, &direction);
        FUNC3("could not get stream direction");
        if (err == noErr && direction != 0) {
            FUNC5(ao, "Substream %d is not an output stream.\n", i);
            continue;
        }

        if (FUNC6(ao->format) || p->spdif_hack ||
            FUNC7(ao, streams[i]))
        {
            FUNC5(ao, "Using substream %d/%zd.\n", i, n_streams);
            p->stream = streams[i];
            p->stream_idx = i;
            break;
        }
    }

    FUNC8(streams);

    if (p->stream_idx < 0) {
        FUNC4(ao, "No useable substream found.\n");
        goto coreaudio_error;
    }

    return 0;

coreaudio_error:
    return -1;
}
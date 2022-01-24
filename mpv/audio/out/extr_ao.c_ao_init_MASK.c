#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mpv_global {int dummy; } ;
struct mp_chmap {int num; } ;
struct encode_lavc_context {int dummy; } ;
struct ao {int samplerate; int format; int init_flags; char* device; int stream_silence; int period_size; char* redirect; int sstride; int num_planes; int bps; int device_buffer; int buffer; int def_buffer; TYPE_2__* api; TYPE_1__* driver; struct mp_chmap channels; int /*<<< orphan*/  api_priv; struct encode_lavc_context* encode_lavc_ctx; } ;
typedef  int /*<<< orphan*/  redirect ;
typedef  int /*<<< orphan*/  rdevice ;
struct TYPE_5__ {scalar_t__ (* init ) (struct ao*) ;int /*<<< orphan*/  options; int /*<<< orphan*/  priv_defaults; int /*<<< orphan*/  priv_size; } ;
struct TYPE_4__ {int encode; int (* init ) (struct ao*) ;int (* get_space ) (struct ao*) ;scalar_t__ play; } ;

/* Variables and functions */
 int AO_INIT_STREAM_SILENCE ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*,int,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 struct ao* FUNC7 (int,struct mpv_global*,void (*) (void*),void*,char*) ; 
 TYPE_2__ ao_api_pull ; 
 TYPE_2__ ao_api_push ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int FUNC11 (struct ao*) ; 
 int FUNC12 (struct ao*) ; 
 scalar_t__ FUNC13 (struct ao*) ; 
 int /*<<< orphan*/  FUNC14 (struct ao*) ; 
 char* FUNC15 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct ao*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ao *FUNC17(bool probing, struct mpv_global *global,
                          void (*wakeup_cb)(void *ctx), void *wakeup_ctx,
                          struct encode_lavc_context *encode_lavc_ctx, int flags,
                          int samplerate, int format, struct mp_chmap channels,
                          char *dev, char *name)
{
    struct ao *ao = FUNC7(probing, global, wakeup_cb, wakeup_ctx, name);
    if (!ao)
        return NULL;
    ao->samplerate = samplerate;
    ao->channels = channels;
    ao->format = format;
    ao->encode_lavc_ctx = encode_lavc_ctx;
    ao->init_flags = flags;
    if (ao->driver->encode != !!ao->encode_lavc_ctx)
        goto fail;

    FUNC2(ao, "requested format: %d Hz, %s channels, %s\n",
               ao->samplerate, FUNC9(&ao->channels),
               FUNC5(ao->format));

    ao->device = FUNC15(ao, dev);

    ao->api = ao->driver->play ? &ao_api_push : &ao_api_pull;
    ao->api_priv = FUNC16(ao, ao->api->priv_size);
    FUNC8(!ao->api->priv_defaults && !ao->api->options);

    ao->stream_silence = flags & AO_INIT_STREAM_SILENCE;

    ao->period_size = 1;

    int r = ao->driver->init(ao);
    if (r < 0) {
        // Silly exception for coreaudio spdif redirection
        if (ao->redirect) {
            char redirect[80], rdevice[80];
            FUNC10(redirect, sizeof(redirect), "%s", ao->redirect);
            FUNC10(rdevice, sizeof(rdevice), "%s", ao->device ? ao->device : "");
            FUNC14(ao);
            return FUNC17(probing, global, wakeup_cb, wakeup_ctx,
                           encode_lavc_ctx, flags, samplerate, format, channels,
                           rdevice, redirect);
        }
        goto fail;
    }

    if (ao->period_size < 1) {
        FUNC1(ao, "Invalid period size set.\n");
        goto fail;
    }

    ao->sstride = FUNC4(ao->format);
    ao->num_planes = 1;
    if (FUNC3(ao->format)) {
        ao->num_planes = ao->channels.num;
    } else {
        ao->sstride *= ao->channels.num;
    }
    ao->bps = ao->samplerate * ao->sstride;

    if (!ao->device_buffer && ao->driver->get_space)
        ao->device_buffer = ao->driver->get_space(ao);
    if (ao->device_buffer)
        FUNC2(ao, "device buffer: %d samples.\n", ao->device_buffer);
    ao->buffer = FUNC0(ao->device_buffer, ao->def_buffer * ao->samplerate);
    ao->buffer = FUNC0(ao->buffer, 1);

    int align = FUNC6(ao->format);
    ao->buffer = (ao->buffer + align - 1) / align * align;
    FUNC2(ao, "using soft-buffer of %d samples.\n", ao->buffer);

    if (ao->api->init(ao) < 0)
        goto fail;
    return ao;

fail:
    FUNC14(ao);
    return NULL;
}
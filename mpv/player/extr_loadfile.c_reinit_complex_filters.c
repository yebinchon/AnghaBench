
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct vo_chain {struct mp_pin* filter_src; TYPE_3__* filter; struct track* track; } ;
struct track {int type; int user_tid; int selected; TYPE_7__* dec; struct mp_pin* sink; } ;
struct mp_pin {int dummy; } ;
struct mp_lavfi {TYPE_8__* f; } ;
struct ao_chain {struct mp_pin* filter_src; TYPE_5__* filter; struct track* track; } ;
struct MPContext {int num_tracks; struct track** tracks; scalar_t__ playback_initialized; TYPE_8__* lavfi; struct ao_chain* ao_chain; struct vo_chain* vo_chain; int filter_root; int lavfi_graph; TYPE_1__* opts; } ;
typedef int label ;
struct TYPE_18__ {int num_pins; struct mp_pin** pins; } ;
struct TYPE_17__ {TYPE_6__* f; } ;
struct TYPE_16__ {struct mp_pin** pins; } ;
struct TYPE_15__ {TYPE_4__* f; } ;
struct TYPE_14__ {struct mp_pin** pins; } ;
struct TYPE_13__ {TYPE_2__* f; } ;
struct TYPE_12__ {struct mp_pin** pins; } ;
struct TYPE_11__ {char* lavfi_complex; } ;


 int MPV_EVENT_TRACKS_CHANGED ;
 int MP_ERR (struct MPContext*,char*,int ) ;
 scalar_t__ MP_PIN_IN ;
 scalar_t__ MP_PIN_OUT ;


 int assert (int) ;
 int cleanup_deassociated_complex_filters (struct MPContext*) ;
 int deassociate_complex_filters (struct MPContext*) ;
 int init_audio_decoder (struct MPContext*,struct track*) ;
 int init_video_decoder (struct MPContext*,struct track*) ;
 int kill_outputs (struct MPContext*,struct track*) ;
 struct mp_pin* mp_filter_get_named_pin (TYPE_8__*,char*) ;
 int mp_filter_has_failed (TYPE_8__*) ;
 int mp_filter_set_error_handler (TYPE_8__*,int ) ;
 struct mp_lavfi* mp_lavfi_create_graph (int ,int ,int,int *,char*) ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int mp_pin_connect (struct mp_pin*,struct mp_pin*) ;
 int mp_pin_disconnect (struct mp_pin*) ;
 scalar_t__ mp_pin_get_dir (struct mp_pin*) ;
 int mp_pin_get_name (struct mp_pin*) ;
 int mp_pin_is_connected (struct mp_pin*) ;
 int reinit_audio_chain_src (struct MPContext*,int *) ;
 int reinit_video_chain_src (struct MPContext*,int *) ;
 int reselect_demux_stream (struct MPContext*,struct track*) ;
 int snprintf (char*,int,char*,char,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int talloc_strdup (int *,char*) ;

__attribute__((used)) static int reinit_complex_filters(struct MPContext *mpctx, bool force_uninit)
{
    char *graph = mpctx->opts->lavfi_complex;
    bool have_graph = graph && graph[0] && !force_uninit;
    if (have_graph && mpctx->lavfi &&
        strcmp(graph, mpctx->lavfi_graph) == 0 &&
        !mp_filter_has_failed(mpctx->lavfi))
        return 0;
    if (!mpctx->lavfi && !have_graph)
        return 0;






    deassociate_complex_filters(mpctx);

    bool success = 0;
    if (!have_graph) {
        success = 1;
        goto done;
    }

    struct mp_lavfi *l =
        mp_lavfi_create_graph(mpctx->filter_root, 0, 0, ((void*)0), graph);
    if (!l)
        goto done;
    mpctx->lavfi = l->f;
    mpctx->lavfi_graph = talloc_strdup(((void*)0), graph);

    mp_filter_set_error_handler(mpctx->lavfi, mpctx->filter_root);

    for (int n = 0; n < mpctx->lavfi->num_pins; n++)
        mp_pin_disconnect(mpctx->lavfi->pins[n]);

    struct mp_pin *pad = mp_filter_get_named_pin(mpctx->lavfi, "vo");
    if (pad && mp_pin_get_dir(pad) == MP_PIN_OUT) {
        if (mpctx->vo_chain && mpctx->vo_chain->track)
            kill_outputs(mpctx, mpctx->vo_chain->track);
        if (!mpctx->vo_chain) {
            reinit_video_chain_src(mpctx, ((void*)0));
            if (!mpctx->vo_chain)
                goto done;
        }
        struct vo_chain *vo_c = mpctx->vo_chain;
        assert(!vo_c->track);
        vo_c->filter_src = pad;
        mp_pin_connect(vo_c->filter->f->pins[0], vo_c->filter_src);
    }

    pad = mp_filter_get_named_pin(mpctx->lavfi, "ao");
    if (pad && mp_pin_get_dir(pad) == MP_PIN_OUT) {
        if (mpctx->ao_chain && mpctx->ao_chain->track)
            kill_outputs(mpctx, mpctx->ao_chain->track);
        if (!mpctx->ao_chain) {
            reinit_audio_chain_src(mpctx, ((void*)0));
            if (!mpctx->ao_chain)
                goto done;
        }
        struct ao_chain *ao_c = mpctx->ao_chain;
        assert(!ao_c->track);
        ao_c->filter_src = pad;
        mp_pin_connect(ao_c->filter->f->pins[0], ao_c->filter_src);
    }

    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct track *track = mpctx->tracks[n];

        char label[32];
        char prefix;
        switch (track->type) {
        case 128: prefix = 'v'; break;
        case 129: prefix = 'a'; break;
        default: continue;
        }
        snprintf(label, sizeof(label), "%cid%d", prefix, track->user_tid);

        pad = mp_filter_get_named_pin(mpctx->lavfi, label);
        if (!pad)
            continue;
        if (mp_pin_get_dir(pad) != MP_PIN_IN)
            continue;
        assert(!mp_pin_is_connected(pad));

        assert(!track->sink);

        kill_outputs(mpctx, track);

        track->sink = pad;
        track->selected = 1;

        if (!track->dec) {
            if (track->type == 128 && !init_video_decoder(mpctx, track))
                goto done;
            if (track->type == 129 && !init_audio_decoder(mpctx, track))
                goto done;
        }

        mp_pin_connect(track->sink, track->dec->f->pins[0]);
    }



    for (int n = 0; n < mpctx->lavfi->num_pins; n++) {
        struct mp_pin *pin = mpctx->lavfi->pins[n];
        if (!mp_pin_is_connected(pin)) {
            MP_ERR(mpctx, "Pad %s is not connected to anything.\n",
                   mp_pin_get_name(pin));
            goto done;
        }
    }

    success = 1;
done:

    if (!success)
        deassociate_complex_filters(mpctx);

    cleanup_deassociated_complex_filters(mpctx);

    if (mpctx->playback_initialized) {
        for (int n = 0; n < mpctx->num_tracks; n++)
            reselect_demux_stream(mpctx, mpctx->tracks[n]);
    }

    mp_notify(mpctx, MPV_EVENT_TRACKS_CHANGED, ((void*)0));

    return success ? 1 : -1;
}

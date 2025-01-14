
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mp_aframe {int dummy; } ;
struct TYPE_8__ {scalar_t__ type; struct mp_aframe* data; } ;
struct lavfi_pad {int buffer_is_eof; int buffer; TYPE_2__ pending; int timebase; int name; } ;
struct lavfi {int draining_recover; int num_in_pads; int warned_nospeed; int in_samples; int in_pts; scalar_t__ emulate_audio_pts; struct lavfi_pad** in_pads; int initialized; } ;
struct TYPE_7__ {scalar_t__ nb_samples; int pts; } ;
typedef TYPE_1__ AVFrame ;


 int MP_ERR (struct lavfi*,char*) ;
 int MP_FATAL (struct lavfi*,char*) ;
 scalar_t__ MP_FRAME_AUDIO ;
 scalar_t__ MP_FRAME_EOF ;
 int MP_WARN (struct lavfi*,char*,int ) ;
 int assert (int ) ;
 scalar_t__ av_buffersrc_add_frame (int ,TYPE_1__*) ;
 scalar_t__ av_buffersrc_get_nb_failed_requests (int ) ;
 int av_frame_free (TYPE_1__**) ;
 int mp_aframe_end_pts (struct mp_aframe*) ;
 double mp_aframe_get_speed (struct mp_aframe*) ;
 TYPE_1__* mp_frame_to_av (TYPE_2__,int *) ;
 int mp_frame_unref (TYPE_2__*) ;
 int read_pad_input (struct lavfi*,struct lavfi_pad*) ;
 int send_global_eof (struct lavfi*) ;

__attribute__((used)) static bool feed_input_pads(struct lavfi *c)
{
    bool progress = 0;
    bool was_draining = c->draining_recover;

    assert(c->initialized);

    for (int n = 0; n < c->num_in_pads; n++) {
        struct lavfi_pad *pad = c->in_pads[n];

        bool requested = 1;






        requested |= pad->buffer_is_eof;

        if (requested)
            read_pad_input(c, pad);

        if (!pad->pending.type || c->draining_recover)
            continue;

        if (pad->buffer_is_eof) {
            MP_WARN(c, "eof state changed on %s\n", pad->name);
            c->draining_recover = 1;
            send_global_eof(c);
            continue;
        }

        if (pad->pending.type == MP_FRAME_AUDIO && !c->warned_nospeed) {
            struct mp_aframe *aframe = pad->pending.data;
            if (mp_aframe_get_speed(aframe) != 1.0) {
                MP_ERR(c, "speed changing filters before libavfilter are not "
                       "supported and can cause desyncs\n");
                c->warned_nospeed = 1;
            }
        }

        AVFrame *frame = mp_frame_to_av(pad->pending, &pad->timebase);
        bool eof = pad->pending.type == MP_FRAME_EOF;

        if (c->emulate_audio_pts && pad->pending.type == MP_FRAME_AUDIO) {
            struct mp_aframe *aframe = pad->pending.data;
            c->in_pts = mp_aframe_end_pts(aframe);
            frame->pts = c->in_samples;
            c->in_samples += frame->nb_samples;
        }

        mp_frame_unref(&pad->pending);

        if (!frame && !eof) {
            MP_FATAL(c, "out of memory or unsupported format\n");
            continue;
        }

        pad->buffer_is_eof = !frame;

        if (av_buffersrc_add_frame(pad->buffer, frame) < 0)
            MP_FATAL(c, "could not pass frame to filter\n");
        av_frame_free(&frame);

        progress = 1;
    }

    if (!was_draining && c->draining_recover)
        progress = 1;

    return progress;
}

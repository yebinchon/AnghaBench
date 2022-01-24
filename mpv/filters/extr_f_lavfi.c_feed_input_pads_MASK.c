#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mp_aframe {int dummy; } ;
struct TYPE_8__ {scalar_t__ type; struct mp_aframe* data; } ;
struct lavfi_pad {int buffer_is_eof; int /*<<< orphan*/  buffer; TYPE_2__ pending; int /*<<< orphan*/  timebase; int /*<<< orphan*/  name; } ;
struct lavfi {int draining_recover; int num_in_pads; int warned_nospeed; int /*<<< orphan*/  in_samples; int /*<<< orphan*/  in_pts; scalar_t__ emulate_audio_pts; struct lavfi_pad** in_pads; int /*<<< orphan*/  initialized; } ;
struct TYPE_7__ {scalar_t__ nb_samples; int /*<<< orphan*/  pts; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lavfi*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lavfi*,char*) ; 
 scalar_t__ MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_EOF ; 
 int /*<<< orphan*/  FUNC2 (struct lavfi*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_aframe*) ; 
 double FUNC8 (struct mp_aframe*) ; 
 TYPE_1__* FUNC9 (TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct lavfi*,struct lavfi_pad*) ; 
 int /*<<< orphan*/  FUNC12 (struct lavfi*) ; 

__attribute__((used)) static bool FUNC13(struct lavfi *c)
{
    bool progress = false;
    bool was_draining = c->draining_recover;

    FUNC3(c->initialized);

    for (int n = 0; n < c->num_in_pads; n++) {
        struct lavfi_pad *pad = c->in_pads[n];

        bool requested = true;
#if LIBAVFILTER_VERSION_MICRO >= 100
        requested = av_buffersrc_get_nb_failed_requests(pad->buffer) > 0;
#endif

        // Always request a frame after EOF so that we can know if the EOF state
        // changes (e.g. for sparse streams with midstream EOF).
        requested |= pad->buffer_is_eof;

        if (requested)
            FUNC11(c, pad);

        if (!pad->pending.type || c->draining_recover)
            continue;

        if (pad->buffer_is_eof) {
            FUNC2(c, "eof state changed on %s\n", pad->name);
            c->draining_recover = true;
            FUNC12(c);
            continue;
        }

        if (pad->pending.type == MP_FRAME_AUDIO && !c->warned_nospeed) {
            struct mp_aframe *aframe = pad->pending.data;
            if (FUNC8(aframe) != 1.0) {
                FUNC0(c, "speed changing filters before libavfilter are not "
                       "supported and can cause desyncs\n");
                c->warned_nospeed = true;
            }
        }

        AVFrame *frame = FUNC9(pad->pending, &pad->timebase);
        bool eof = pad->pending.type == MP_FRAME_EOF;

        if (c->emulate_audio_pts && pad->pending.type == MP_FRAME_AUDIO) {
            struct mp_aframe *aframe = pad->pending.data;
            c->in_pts = FUNC7(aframe);
            frame->pts = c->in_samples; // timebase is 1/sample_rate
            c->in_samples += frame->nb_samples;
        }

        FUNC10(&pad->pending);

        if (!frame && !eof) {
            FUNC1(c, "out of memory or unsupported format\n");
            continue;
        }

        pad->buffer_is_eof = !frame;

        if (FUNC4(pad->buffer, frame) < 0)
            FUNC1(c, "could not pass frame to filter\n");
        FUNC6(&frame);

        progress = true;
    }

    if (!was_draining && c->draining_recover)
        progress = true;

    return progress;
}
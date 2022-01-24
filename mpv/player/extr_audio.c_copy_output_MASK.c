#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct mp_frame {scalar_t__ type; int /*<<< orphan*/  data; } ;
struct mp_chmap {int dummy; } ;
struct mp_audio_buffer {int dummy; } ;
struct ao_chain {int out_eof; int /*<<< orphan*/  output_frame; int /*<<< orphan*/  last_out_pts; TYPE_3__* filter; int /*<<< orphan*/  ao; struct mp_audio_buffer* ao_buffer; } ;
struct MPContext {int audio_speed; TYPE_1__* opts; } ;
struct TYPE_6__ {TYPE_2__* f; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pins; } ;
struct TYPE_4__ {double audio_delay; } ;

/* Variables and functions */
 int INT_MAX ; 
 int FUNC0 (double,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*) ; 
 scalar_t__ MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_EOF ; 
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_audio_buffer*,void**,int) ; 
 int FUNC9 (struct mp_audio_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_frame*) ; 
 struct mp_frame FUNC11 (int /*<<< orphan*/ ) ; 
 double FUNC12 (struct MPContext*) ; 

__attribute__((used)) static bool FUNC13(struct MPContext *mpctx, struct ao_chain *ao_c,
                        int minsamples, double endpts, bool *seteof)
{
    struct mp_audio_buffer *outbuf = ao_c->ao_buffer;

    int ao_rate;
    int ao_format;
    struct mp_chmap ao_channels;
    FUNC3(ao_c->ao, &ao_rate, &ao_format, &ao_channels);

    while (FUNC9(outbuf) < minsamples) {
        int cursamples = FUNC9(outbuf);
        int maxsamples = INT_MAX;
        if (endpts != MP_NOPTS_VALUE) {
            double rate = ao_rate / mpctx->audio_speed;
            double curpts = FUNC12(mpctx);
            if (curpts != MP_NOPTS_VALUE) {
                double remaining =
                    (endpts - curpts - mpctx->opts->audio_delay) * rate;
                maxsamples = FUNC0(remaining, 0, INT_MAX);
            }
        }

        if (!ao_c->output_frame || !FUNC6(ao_c->output_frame)) {
            FUNC2(&ao_c->output_frame);

            struct mp_frame frame = FUNC11(ao_c->filter->f->pins[1]);
            if (frame.type == MP_FRAME_AUDIO) {
                ao_c->output_frame = frame.data;
                ao_c->out_eof = false;
                ao_c->last_out_pts = FUNC4(ao_c->output_frame);
            } else if (frame.type == MP_FRAME_EOF) {
                ao_c->out_eof = true;
            } else if (frame.type) {
                FUNC1(mpctx, "unknown frame type\n");
                FUNC10(&frame);
            }
        }

        // out of data
        if (!ao_c->output_frame) {
            if (ao_c->out_eof) {
                *seteof = true;
                return true;
            }
            return false;
        }

        if (cursamples + FUNC6(ao_c->output_frame) > maxsamples) {
            if (cursamples < maxsamples) {
                uint8_t **data = FUNC5(ao_c->output_frame);
                FUNC8(outbuf, (void **)data,
                                       maxsamples - cursamples);
                FUNC7(ao_c->output_frame,
                                       maxsamples - cursamples);
            }
            *seteof = true;
            return true;
        }

        uint8_t **data = FUNC5(ao_c->output_frame);
        FUNC8(outbuf, (void **)data,
                               FUNC6(ao_c->output_frame));
        FUNC2(&ao_c->output_frame);
    }
    return true;
}
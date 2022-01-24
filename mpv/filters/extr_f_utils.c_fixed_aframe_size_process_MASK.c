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
struct mp_frame {scalar_t__ type; int /*<<< orphan*/ * data; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct fixed_aframe_size_priv* priv; } ;
struct fixed_aframe_size_priv {scalar_t__ samples; scalar_t__ out_written; int /*<<< orphan*/ * out; int /*<<< orphan*/  pad_silence; int /*<<< orphan*/ * in; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 struct mp_frame FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_filter*,char*) ; 
 scalar_t__ MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_EOF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct mp_frame) ; 
 struct mp_frame FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct mp_frame) ; 

__attribute__((used)) static void FUNC22(struct mp_filter *f)
{
    struct fixed_aframe_size_priv *p = f->priv;

    if (!FUNC16(f->ppins[1]))
        return;

    if (p->in && !FUNC10(p->in))
        FUNC3(&p->in);

    if (!p->in) {
        struct mp_frame frame = FUNC18(f->ppins[0]);
        if (frame.type == MP_FRAME_EOF) {
            if (!p->out) {
                FUNC17(f->ppins[1], frame);
                return;
            }
            FUNC19(f->ppins[0]);
        } else if (frame.type == MP_FRAME_AUDIO) {
            p->in = frame.data;
            if (p->out && !FUNC6(p->out, p->in)) {
                FUNC21(f->ppins[0], frame);
                p->in = NULL;
            }
        } else if (frame.type) {
            FUNC2(f, "unsupported frame type\n");
            FUNC15(f);
            return;
        } else {
            return; // no new data yet
        }
    }

    if (p->in) {
        if (!p->out) {
            p->out = FUNC9();
            FUNC5(p->out, p->in);
            FUNC7(p->out, p->in);
            if (FUNC11(p->pool, p->out, p->samples) < 0) {
                FUNC15(f);
                return;
            }
            p->out_written = 0;
        }
        int in_samples = FUNC10(p->in);
        int copy = FUNC1(in_samples, p->samples - p->out_written);
        if (!FUNC8(p->out, p->out_written, p->in, 0, copy))
            FUNC4(0);
        FUNC14(p->in, copy);
        p->out_written += copy;
    }

    // p->in not set means draining for EOF or format change
    if ((!p->in && p->out_written) || p->out_written == p->samples) {
        int missing = p->samples - p->out_written;
        FUNC4(missing >= 0);
        if (missing) {
            FUNC12(p->out, p->out_written, missing);
            if (!p->pad_silence)
                FUNC13(p->out, p->out_written);
        }
        FUNC17(f->ppins[1], FUNC0(MP_FRAME_AUDIO, p->out));
        p->out = NULL;
        p->out_written = 0;
    } else {
        FUNC20(f->ppins[0]);
    }
}
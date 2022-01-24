#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_frame {scalar_t__ type; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct chain* priv; } ;
struct TYPE_2__ {int got_output_eof; int /*<<< orphan*/  update_subtitles_ctx; int /*<<< orphan*/  (* update_subtitles ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct chain {TYPE_1__ public; int /*<<< orphan*/  filters_out; int /*<<< orphan*/  filters_in; } ;

/* Variables and functions */
 scalar_t__ MP_FRAME_EOF ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct chain*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_frame) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mp_frame) ; 
 struct mp_frame FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mp_filter *f)
{
    struct chain *p = f->priv;

    if (FUNC2(p->filters_in, f->ppins[0])) {
        struct mp_frame frame = FUNC4(f->ppins[0]);

        if (frame.type == MP_FRAME_EOF)
            FUNC0(p, "filter input EOF\n");

        if (frame.type == MP_FRAME_VIDEO && p->public.update_subtitles) {
            p->public.update_subtitles(p->public.update_subtitles_ctx,
                                       FUNC1(frame));
        }

        FUNC3(p->filters_in, frame);
    }

    if (FUNC2(f->ppins[1], p->filters_out)) {
        struct mp_frame frame = FUNC4(p->filters_out);

        p->public.got_output_eof = frame.type == MP_FRAME_EOF;
        if (p->public.got_output_eof)
            FUNC0(p, "filter output EOF\n");

        FUNC3(f->ppins[1], frame);
    }
}
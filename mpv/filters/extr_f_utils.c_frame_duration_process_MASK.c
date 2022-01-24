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
struct mp_image {scalar_t__ pts; scalar_t__ pkt_duration; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct frame_duration_priv* priv; } ;
struct frame_duration_priv {struct mp_image* buffered; } ;

/* Variables and functions */
 struct mp_frame FUNC0 (scalar_t__,struct mp_image*) ; 
 scalar_t__ MP_FRAME_EOF ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 scalar_t__ MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mp_frame) ; 
 struct mp_frame FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mp_filter *f)
{
    struct frame_duration_priv *p = f->priv;

    if (!FUNC1(f->ppins[1], f->ppins[0]))
        return;

    struct mp_frame frame = FUNC3(f->ppins[0]);

    if (frame.type == MP_FRAME_EOF && p->buffered) {
        FUNC2(f->ppins[1], FUNC0(MP_FRAME_VIDEO, p->buffered));
        p->buffered = NULL;
        // Pass through the actual EOF in the next iteration.
        FUNC4(f->ppins[0]);
    } else if (frame.type == MP_FRAME_VIDEO) {
        struct mp_image *next = frame.data;
        if (p->buffered) {
            if (p->buffered->pts != MP_NOPTS_VALUE &&
                next->pts != MP_NOPTS_VALUE &&
                next->pts >= p->buffered->pts)
            {
                p->buffered->pkt_duration = next->pts - p->buffered->pts;
            }
            FUNC2(f->ppins[1], FUNC0(MP_FRAME_VIDEO, p->buffered));
        } else {
            FUNC5(f->ppins[0]);
        }
        p->buffered = next;
    } else {
        FUNC2(f->ppins[1], frame);
    }
}
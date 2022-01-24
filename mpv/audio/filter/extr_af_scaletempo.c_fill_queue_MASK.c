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
typedef  int /*<<< orphan*/  uint8_t ;
struct priv {int bytes_per_frame; scalar_t__ bytes_to_slide; scalar_t__ bytes_queued; int buf_queue; int bytes_queue; scalar_t__ in; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/ ** FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static bool FUNC7(struct priv *s)
{
    int bytes_in = s->in ? FUNC5(s->in) * s->bytes_per_frame : 0;
    int offset = 0;

    if (s->bytes_to_slide > 0) {
        if (s->bytes_to_slide < s->bytes_queued) {
            int bytes_move = s->bytes_queued - s->bytes_to_slide;
            FUNC3(s->buf_queue, s->buf_queue + s->bytes_to_slide, bytes_move);
            s->bytes_to_slide = 0;
            s->bytes_queued = bytes_move;
        } else {
            int bytes_skip;
            s->bytes_to_slide -= s->bytes_queued;
            bytes_skip = FUNC0(s->bytes_to_slide, bytes_in);
            s->bytes_queued = 0;
            s->bytes_to_slide -= bytes_skip;
            offset += bytes_skip;
            bytes_in -= bytes_skip;
        }
    }

    int bytes_needed = s->bytes_queue - s->bytes_queued;
    FUNC1(bytes_needed >= 0);

    int bytes_copy = FUNC0(bytes_needed, bytes_in);
    if (bytes_copy > 0) {
        uint8_t **planes = FUNC4(s->in);
        FUNC2(s->buf_queue + s->bytes_queued, planes[0] + offset, bytes_copy);
        s->bytes_queued += bytes_copy;
        offset += bytes_copy;
        bytes_needed -= bytes_copy;
    }

    if (s->in)
        FUNC6(s->in, offset / s->bytes_per_frame);

    return bytes_needed == 0;
}
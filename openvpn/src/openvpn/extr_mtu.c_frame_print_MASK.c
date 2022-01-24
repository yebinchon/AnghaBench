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
struct gc_arena {int dummy; } ;
struct frame {int /*<<< orphan*/  align_adjust; int /*<<< orphan*/  align_flags; int /*<<< orphan*/  extra_link; int /*<<< orphan*/  extra_tun; int /*<<< orphan*/  extra_buffer; int /*<<< orphan*/  extra_frame; int /*<<< orphan*/  link_mtu_dynamic; int /*<<< orphan*/  link_mtu; } ;
struct buffer {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct buffer FUNC0 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_arena*) ; 
 struct gc_arena FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 

void
FUNC5(const struct frame *frame,
            int level,
            const char *prefix)
{
    struct gc_arena gc = FUNC3();
    struct buffer out = FUNC0(256, &gc);
    if (prefix)
    {
        FUNC1(&out, "%s ", prefix);
    }
    FUNC1(&out, "[");
    FUNC1(&out, " L:%d", frame->link_mtu);
    FUNC1(&out, " D:%d", frame->link_mtu_dynamic);
    FUNC1(&out, " EF:%d", frame->extra_frame);
    FUNC1(&out, " EB:%d", frame->extra_buffer);
    FUNC1(&out, " ET:%d", frame->extra_tun);
    FUNC1(&out, " EL:%d", frame->extra_link);
    if (frame->align_flags && frame->align_adjust)
    {
        FUNC1(&out, " AF:%u/%d", frame->align_flags, frame->align_adjust);
    }
    FUNC1(&out, " ]");

    FUNC4(level, "%s", out.data);
    FUNC2(&gc);
}
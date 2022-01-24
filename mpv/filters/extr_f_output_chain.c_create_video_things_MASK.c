#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_user_filter {char* name; int /*<<< orphan*/  f; int /*<<< orphan*/  wrapper; } ;
struct TYPE_4__ {int /*<<< orphan*/  get_display_fps; struct chain* priv; } ;
struct chain {int /*<<< orphan*/  num_post_filters; int /*<<< orphan*/  post_filters; int /*<<< orphan*/  num_pre_filters; int /*<<< orphan*/  pre_filters; TYPE_2__ stream_info; TYPE_1__* f; int /*<<< orphan*/  frame_type; } ;
struct TYPE_3__ {TYPE_2__* stream_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_user_filter*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mp_user_filter* FUNC2 (struct chain*) ; 
 int /*<<< orphan*/  get_display_fps ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct chain *p)
{
    p->frame_type = MP_FRAME_VIDEO;

    p->stream_info.priv = p;
    p->stream_info.get_display_fps = get_display_fps;

    p->f->stream_info = &p->stream_info;

    struct mp_user_filter *f = FUNC2(p);
    f->name = "userdeint";
    f->f = FUNC4(f->wrapper);
    if (!f->f)
        FUNC1();
    FUNC0(p, p->pre_filters, p->num_pre_filters, f);

    f = FUNC2(p);
    f->name = "autorotate";
    f->f = FUNC3(f->wrapper);
    if (!f->f)
        FUNC1();
    FUNC0(p, p->post_filters, p->num_post_filters, f);
}
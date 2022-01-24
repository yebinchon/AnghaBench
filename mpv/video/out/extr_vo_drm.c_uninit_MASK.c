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
struct vo {struct priv* priv; } ;
struct priv {scalar_t__ fb_queue_len; unsigned int buf_count; int /*<<< orphan*/  cur_frame_cropped; int /*<<< orphan*/  cur_frame; int /*<<< orphan*/  last_input; int /*<<< orphan*/  vt_switcher; scalar_t__ vt_switcher_active; TYPE_1__* kms; int /*<<< orphan*/ * bufs; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct vo *vo)
{
    struct priv *p = vo->priv;

    FUNC0(vo);

    while (p->fb_queue_len > 0) {
        FUNC3(vo);
    }

    if (p->kms) {
        for (unsigned int i = 0; i < p->buf_count; i++)
            FUNC1(p->kms->fd, &p->bufs[i]);
        FUNC2(p->kms);
        p->kms = NULL;
    }

    if (p->vt_switcher_active)
        FUNC5(&p->vt_switcher);

    FUNC4(p->last_input);
    FUNC4(p->cur_frame);
    FUNC4(p->cur_frame_cropped);
}
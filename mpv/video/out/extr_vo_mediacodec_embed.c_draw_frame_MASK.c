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
struct vo_frame {int /*<<< orphan*/  current; int /*<<< orphan*/  repeat; int /*<<< orphan*/  redraw; } ;
struct vo {struct priv* priv; } ;
struct priv {int /*<<< orphan*/ * next_image; } ;
typedef  int /*<<< orphan*/  mp_image_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vo *vo, struct vo_frame *frame)
{
    struct priv *p = vo->priv;

    mp_image_t *mpi = NULL;
    if (!frame->redraw && !frame->repeat)
        mpi = FUNC0(frame->current);

    FUNC1(p->next_image);
    p->next_image = mpi;
}
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
struct mp_image {int dummy; } ;
struct MPContext {scalar_t__ num_next_frames; struct mp_image** next_frames; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mp_image**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 

__attribute__((used)) static void FUNC3(struct MPContext *mpctx, struct mp_image *frame)
{
    FUNC1(mpctx->num_next_frames < FUNC0(mpctx->next_frames));
    FUNC1(frame);
    mpctx->next_frames[mpctx->num_next_frames++] = frame;
    if (mpctx->num_next_frames == 1)
        FUNC2(mpctx);
}
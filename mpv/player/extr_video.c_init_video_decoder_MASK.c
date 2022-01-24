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
struct track {int /*<<< orphan*/ * sink; int /*<<< orphan*/  dec; int /*<<< orphan*/  stream; TYPE_2__* vo_c; } ;
struct mp_filter {int dummy; } ;
struct MPContext {struct mp_filter* filter_root; } ;
struct TYPE_4__ {TYPE_1__* filter; } ;
struct TYPE_3__ {struct mp_filter* f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct MPContext *mpctx, struct track *track)
{
    FUNC0(!track->dec);
    if (!track->stream)
        goto err_out;

    struct mp_filter *parent = mpctx->filter_root;

    // If possible, set this as parent so the decoder gets the hwdec and DR
    // interfaces.
    // Note: at least mpv_opengl_cb_uninit_gl() relies on being able to get
    //       rid of all references to the VO by destroying the VO chain. Thus,
    //       decoders not linked to vo_chain must not use the hwdec context.
    if (track->vo_c)
        parent = track->vo_c->filter->f;

    track->dec = FUNC2(parent, track->stream);
    if (!track->dec)
        goto err_out;

    if (!FUNC3(track->dec))
        goto err_out;

    return 1;

err_out:
    if (track->sink)
        FUNC4(track->sink);
    track->sink = NULL;
    FUNC1(mpctx, track);
    return 0;
}
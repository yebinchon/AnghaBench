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
struct vo {int /*<<< orphan*/  log; struct priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;
struct priv {int /*<<< orphan*/  renderer; int /*<<< orphan*/  display_cond; int /*<<< orphan*/  display_mutex; TYPE_1__ egl; scalar_t__ layer; scalar_t__ osd_layer; scalar_t__ video_layer; scalar_t__ background_layer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct vo*) ; 
 int /*<<< orphan*/  tv_callback ; 
 int /*<<< orphan*/  FUNC7 (struct vo*) ; 
 scalar_t__ FUNC8 (struct vo*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct vo*) ; 

__attribute__((used)) static int FUNC10(struct vo *vo)
{
    struct priv *p = vo->priv;

    p->background_layer = p->layer;
    p->video_layer = p->layer + 1;
    p->osd_layer = p->layer + 2;

    p->egl.log = vo->log;

    FUNC1();

    if (FUNC3()) {
        FUNC0(vo, "Could not initialize MMAL.\n");
        return -1;
    }

    FUNC5(&p->display_mutex, NULL);
    FUNC4(&p->display_cond, NULL);

    if (FUNC6(vo) < 0)
        goto fail;

    if (FUNC8(vo) < 0)
        goto fail;

    if (FUNC2(MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, &p->renderer))
    {
        FUNC0(vo, "Could not create MMAL renderer.\n");
        goto fail;
    }

    FUNC9(tv_callback, vo);

    return 0;

fail:
    FUNC7(vo);
    return -1;
}
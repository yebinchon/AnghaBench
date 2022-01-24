#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct mp_image* data; } ;
struct TYPE_7__ {struct mp_filter* filter; TYPE_1__ frame; } ;
struct priv {int force_update; scalar_t__ in_imgfmt; scalar_t__ in_subfmt; TYPE_3__ sub; int /*<<< orphan*/  log; int /*<<< orphan*/  public; } ;
struct TYPE_6__ {scalar_t__ hw_subfmt; scalar_t__ imgfmt; } ;
struct mp_image {scalar_t__ imgfmt; TYPE_2__ params; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mp_image*,struct mp_filter**) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(struct mp_filter *f)
{
    struct priv *p = f->priv;

    struct mp_image *img = p->sub.frame.data;

    if (p->force_update)
        p->in_imgfmt = p->in_subfmt = 0;

    if (img->imgfmt == p->in_imgfmt && img->params.hw_subfmt == p->in_subfmt) {
        FUNC2(&p->sub);
        return;
    }

    if (!FUNC3(&p->sub)) {
        p->in_imgfmt = p->in_subfmt = 0;
        return;
    }

    p->in_imgfmt = img->params.imgfmt;
    p->in_subfmt = img->params.hw_subfmt;
    p->force_update = false;

    struct mp_filter *conv = NULL;
    if (FUNC0(&p->public, p->log, img, &conv)) {
        p->sub.filter = conv;
        FUNC2(&p->sub);
    } else {
        FUNC1(f);
    }
}
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
struct TYPE_2__ {scalar_t__ hw_subfmt; } ;
struct priv {int require_filtering; int /*<<< orphan*/  queue; TYPE_1__ out_params; TYPE_1__ params; int /*<<< orphan*/  out_format; int /*<<< orphan*/  pool; } ;
struct mp_image {TYPE_1__ params; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DXGI_FORMAT_NV12 ; 
 scalar_t__ IMGFMT_NV12 ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*) ; 
 struct mp_image* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mp_image* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mp_image*) ; 
 struct mp_image* FUNC9 (struct mp_filter*) ; 

__attribute__((used)) static void FUNC10(struct mp_filter *vf)
{
    struct priv *p = vf->priv;

    struct mp_image *in_fmt = FUNC5(p->queue);
    if (in_fmt) {
        FUNC3(p->pool);

        FUNC0(vf);

        p->params = in_fmt->params;
        p->out_params = p->params;

        p->out_params.hw_subfmt = IMGFMT_NV12;
        p->out_format = DXGI_FORMAT_NV12;

        p->require_filtering = p->params.hw_subfmt != p->out_params.hw_subfmt;
    }

    if (!FUNC4(p->queue))
        return;

    if (!FUNC7(p->queue) && !p->require_filtering) {
        // no filtering
        struct mp_image *in = FUNC2(FUNC6(p->queue, 0));
        if (!in) {
            FUNC1(vf);
            return;
        }
        FUNC8(p->queue, in);
    } else {
        FUNC8(p->queue, FUNC9(vf));
    }
}
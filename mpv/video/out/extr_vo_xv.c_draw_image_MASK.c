#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xvctx {TYPE_1__* original_image; int /*<<< orphan*/  current_buf; scalar_t__ num_buffers; } ;
struct vo {int /*<<< orphan*/  osd; int /*<<< orphan*/  params; struct xvctx* priv; } ;
struct mp_osd_res {int dummy; } ;
struct mp_image {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_5__ {int /*<<< orphan*/  pts; } ;
typedef  TYPE_1__ mp_image_t ;

/* Variables and functions */
 struct mp_image FUNC0 (struct vo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mp_osd_res,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_image*) ; 
 struct mp_osd_res FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct vo*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct vo *vo, mp_image_t *mpi)
{
    struct xvctx *ctx = vo->priv;

    FUNC6(vo, ctx->num_buffers - 1);

    struct mp_image xv_buffer = FUNC0(vo, ctx->current_buf);
    if (mpi) {
        FUNC2(&xv_buffer, mpi);
    } else {
        FUNC1(&xv_buffer, 0, 0, xv_buffer.w, xv_buffer.h);
    }

    struct mp_osd_res res = FUNC4(vo->params);
    FUNC3(vo->osd, res, mpi ? mpi->pts : 0, 0, &xv_buffer);

    if (mpi != ctx->original_image) {
        FUNC5(ctx->original_image);
        ctx->original_image = mpi;
    }
}
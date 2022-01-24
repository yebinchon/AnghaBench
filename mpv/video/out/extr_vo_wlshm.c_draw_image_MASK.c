#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vo_wayland_state {int /*<<< orphan*/  surface; } ;
struct vo {int /*<<< orphan*/  osd; int /*<<< orphan*/  dheight; int /*<<< orphan*/  dwidth; struct vo_wayland_state* wl; struct priv* priv; } ;
struct TYPE_6__ {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
struct TYPE_4__ {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
struct priv {int /*<<< orphan*/  osd; int /*<<< orphan*/  sws; TYPE_3__ dst; TYPE_1__ src; struct buffer* free_buffers; } ;
struct mp_rect {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
struct TYPE_5__ {int /*<<< orphan*/  align_y; int /*<<< orphan*/  align_x; } ;
struct mp_image {scalar_t__ w; scalar_t__ h; int /*<<< orphan*/  pts; TYPE_2__ fmt; } ;
struct buffer {int /*<<< orphan*/ * buffer; struct mp_image mpi; struct buffer* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct buffer* FUNC2 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*,struct mp_rect) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mp_image*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct vo *vo, struct mp_image *src)
{
    struct priv *p = vo->priv;
    struct vo_wayland_state *wl = vo->wl;
    struct buffer *buf;

    buf = p->free_buffers;
    if (buf) {
        p->free_buffers = buf->next;
    } else {
        buf = FUNC2(vo, vo->dwidth, vo->dheight);
        if (!buf) {
            FUNC8(wl->surface, NULL, 0, 0);
            return;
        }
    }
    if (src) {
        struct mp_image dst = buf->mpi;
        struct mp_rect src_rc;
        struct mp_rect dst_rc;
        src_rc.x0 = FUNC1(p->src.x0, FUNC0(src->fmt.align_x, 4));
        src_rc.y0 = FUNC1(p->src.y0, FUNC0(src->fmt.align_y, 4));
        src_rc.x1 = p->src.x1 - (p->src.x0 - src_rc.x0);
        src_rc.y1 = p->src.y1 - (p->src.y0 - src_rc.y0);
        dst_rc.x0 = FUNC1(p->dst.x0, FUNC0(dst.fmt.align_x, 4));
        dst_rc.y0 = FUNC1(p->dst.y0, FUNC0(dst.fmt.align_y, 4));
        dst_rc.x1 = p->dst.x1 - (p->dst.x0 - dst_rc.x0);
        dst_rc.y1 = p->dst.y1 - (p->dst.y0 - dst_rc.y0);
        FUNC4(src, src_rc);
        FUNC4(&dst, dst_rc);
        FUNC5(p->sws, &dst, src);
        if (dst_rc.y0 > 0)
            FUNC3(&buf->mpi, 0, 0, buf->mpi.w, dst_rc.y0);
        if (buf->mpi.h > dst_rc.y1)
            FUNC3(&buf->mpi, 0, dst_rc.y1, buf->mpi.w, buf->mpi.h);
        if (dst_rc.x0 > 0)
            FUNC3(&buf->mpi, 0, dst_rc.y0, dst_rc.x0, dst_rc.y1);
        if (buf->mpi.w > dst_rc.x1)
            FUNC3(&buf->mpi, dst_rc.x1, dst_rc.y0, buf->mpi.w, dst_rc.y1);
        FUNC6(vo->osd, p->osd, src->pts, 0, &buf->mpi);
    } else {
        FUNC3(&buf->mpi, 0, 0, buf->mpi.w, buf->mpi.h);
        FUNC6(vo->osd, p->osd, 0, 0, &buf->mpi);
    }
    FUNC7(src);
    FUNC8(wl->surface, buf->buffer, 0, 0);
}
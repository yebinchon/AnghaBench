#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct vo_frame {int /*<<< orphan*/  display_synced; scalar_t__ repeat; int /*<<< orphan*/  redraw; int /*<<< orphan*/  current; } ;
struct vo {int /*<<< orphan*/  params; struct priv* priv; } ;
struct TYPE_9__ {scalar_t__ gl; } ;
struct priv {int skip_osd; struct mp_image* next_image; TYPE_2__* swpool; int /*<<< orphan*/  display_synced; TYPE_1__ egl; int /*<<< orphan*/  osd_pts; int /*<<< orphan*/  renderer_enabled; } ;
struct mp_image {scalar_t__ imgfmt; int /*<<< orphan*/  member_0; void** planes; int /*<<< orphan*/  pts; } ;
typedef  struct mp_image mp_image_t ;
struct TYPE_11__ {int /*<<< orphan*/  length; } ;
struct TYPE_10__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ IMGFMT_MMAL ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  free_mmal_buffer ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*,struct mp_image*) ; 
 struct mp_image* FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct mp_image* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_image*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC10 (struct vo*) ; 

__attribute__((used)) static void FUNC11(struct vo *vo, struct vo_frame *frame)
{
    struct priv *p = vo->priv;

    if (!p->renderer_enabled)
        return;

    mp_image_t *mpi = NULL;
    if (!frame->redraw && !frame->repeat)
        mpi = FUNC7(frame->current);

    FUNC9(p->next_image);
    p->next_image = NULL;

    if (mpi)
        p->osd_pts = mpi->pts;

    // Redraw only if the OSD has meaningfully changed, which we assume it
    // hasn't when a frame is merely repeated for display sync.
    p->skip_osd = !frame->redraw && frame->repeat;

    if (!p->skip_osd && p->egl.gl)
        FUNC10(vo);

    p->display_synced = frame->display_synced;

    if (mpi && mpi->imgfmt != IMGFMT_MMAL) {
        MMAL_BUFFER_HEADER_T *buffer = FUNC4(p->swpool->queue);
        if (!buffer) {
            FUNC9(mpi);
            FUNC0(vo, "Can't allocate buffer.\n");
            return;
        }
        FUNC3(buffer);

        struct mp_image *new_ref = FUNC6(NULL, buffer,
                                                           free_mmal_buffer);
        if (!new_ref) {
            FUNC2(buffer);
            FUNC9(mpi);
            FUNC0(vo, "Out of memory.\n");
            return;
        }

        FUNC8(new_ref, IMGFMT_MMAL);
        new_ref->planes[3] = (void *)buffer;

        struct mp_image dmpi = {0};
        buffer->length = FUNC1(&dmpi, buffer, vo->params);
        FUNC5(&dmpi, mpi);

        FUNC9(mpi);
        mpi = new_ref;
    }

    p->next_image = mpi;
}
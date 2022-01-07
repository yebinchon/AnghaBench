
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct vo_frame {int display_synced; scalar_t__ repeat; int redraw; int current; } ;
struct vo {int params; struct priv* priv; } ;
struct TYPE_9__ {scalar_t__ gl; } ;
struct priv {int skip_osd; struct mp_image* next_image; TYPE_2__* swpool; int display_synced; TYPE_1__ egl; int osd_pts; int renderer_enabled; } ;
struct mp_image {scalar_t__ imgfmt; int member_0; void** planes; int pts; } ;
typedef struct mp_image mp_image_t ;
struct TYPE_11__ {int length; } ;
struct TYPE_10__ {int queue; } ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 scalar_t__ IMGFMT_MMAL ;
 int MP_ERR (struct vo*,char*) ;
 int free_mmal_buffer ;
 int layout_buffer (struct mp_image*,TYPE_3__*,int ) ;
 int mmal_buffer_header_release (TYPE_3__*) ;
 int mmal_buffer_header_reset (TYPE_3__*) ;
 TYPE_3__* mmal_queue_wait (int ) ;
 int mp_image_copy (struct mp_image*,struct mp_image*) ;
 struct mp_image* mp_image_new_custom_ref (int *,TYPE_3__*,int ) ;
 struct mp_image* mp_image_new_ref (int ) ;
 int mp_image_setfmt (struct mp_image*,scalar_t__) ;
 int talloc_free (struct mp_image*) ;
 int update_osd (struct vo*) ;

__attribute__((used)) static void draw_frame(struct vo *vo, struct vo_frame *frame)
{
    struct priv *p = vo->priv;

    if (!p->renderer_enabled)
        return;

    mp_image_t *mpi = ((void*)0);
    if (!frame->redraw && !frame->repeat)
        mpi = mp_image_new_ref(frame->current);

    talloc_free(p->next_image);
    p->next_image = ((void*)0);

    if (mpi)
        p->osd_pts = mpi->pts;



    p->skip_osd = !frame->redraw && frame->repeat;

    if (!p->skip_osd && p->egl.gl)
        update_osd(vo);

    p->display_synced = frame->display_synced;

    if (mpi && mpi->imgfmt != IMGFMT_MMAL) {
        MMAL_BUFFER_HEADER_T *buffer = mmal_queue_wait(p->swpool->queue);
        if (!buffer) {
            talloc_free(mpi);
            MP_ERR(vo, "Can't allocate buffer.\n");
            return;
        }
        mmal_buffer_header_reset(buffer);

        struct mp_image *new_ref = mp_image_new_custom_ref(((void*)0), buffer,
                                                           free_mmal_buffer);
        if (!new_ref) {
            mmal_buffer_header_release(buffer);
            talloc_free(mpi);
            MP_ERR(vo, "Out of memory.\n");
            return;
        }

        mp_image_setfmt(new_ref, IMGFMT_MMAL);
        new_ref->planes[3] = (void *)buffer;

        struct mp_image dmpi = {0};
        buffer->length = layout_buffer(&dmpi, buffer, vo->params);
        mp_image_copy(&dmpi, mpi);

        talloc_free(mpi);
        mpi = new_ref;
    }

    p->next_image = mpi;
}

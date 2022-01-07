
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct TYPE_5__ {int egl_surface; int egl_display; scalar_t__ gl; } ;
struct priv {int skip_osd; scalar_t__ display_synced; TYPE_2__* renderer; TYPE_1__ egl; struct mp_image* next_image; int renderer_enabled; } ;
struct mp_image {scalar_t__* planes; } ;
struct TYPE_7__ {struct mp_image* user_data; } ;
struct TYPE_6__ {int ** input; } ;
typedef int MMAL_PORT_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int MP_ERR (struct vo*,char*) ;
 int eglSwapBuffers (int ,int ) ;
 scalar_t__ mmal_port_send_buffer (int *,TYPE_3__*) ;
 int talloc_free (struct mp_image*) ;
 int wait_next_vsync (struct vo*) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (!p->renderer_enabled)
        return;

    struct mp_image *mpi = p->next_image;
    p->next_image = ((void*)0);


    if (!p->skip_osd && p->egl.gl)
        eglSwapBuffers(p->egl.egl_display, p->egl.egl_surface);
    p->skip_osd = 0;

    if (mpi) {
        MMAL_PORT_T *input = p->renderer->input[0];
        MMAL_BUFFER_HEADER_T *ref = (void *)mpi->planes[3];


        ref->user_data = mpi;

        if (mmal_port_send_buffer(input, ref)) {
            MP_ERR(vo, "could not queue picture!\n");
            talloc_free(mpi);
        }
    }

    if (p->display_synced)
        wait_next_vsync(vo);
}

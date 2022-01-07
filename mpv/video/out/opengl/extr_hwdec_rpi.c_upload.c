
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ra_hwdec {struct priv* priv; } ;
struct priv {int params; TYPE_1__* swpool; } ;
struct mp_image {int member_0; void** planes; } ;
struct TYPE_9__ {int length; } ;
struct TYPE_8__ {int queue; } ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int IMGFMT_MMAL ;
 int MP_ERR (struct ra_hwdec*,char*) ;
 int free_mmal_buffer ;
 int layout_buffer (struct mp_image*,TYPE_2__*,int *) ;
 int mmal_buffer_header_release (TYPE_2__*) ;
 int mmal_buffer_header_reset (TYPE_2__*) ;
 TYPE_2__* mmal_queue_wait (int ) ;
 int mp_image_copy (struct mp_image*,struct mp_image*) ;
 struct mp_image* mp_image_new_custom_ref (int *,TYPE_2__*,int ) ;
 int mp_image_setfmt (struct mp_image*,int ) ;

__attribute__((used)) static struct mp_image *upload(struct ra_hwdec *hw, struct mp_image *hw_image)
{
    struct priv *p = hw->priv;

    MMAL_BUFFER_HEADER_T *buffer = mmal_queue_wait(p->swpool->queue);
    if (!buffer) {
        MP_ERR(hw, "Can't allocate buffer.\n");
        return ((void*)0);
    }
    mmal_buffer_header_reset(buffer);

    struct mp_image *new_ref = mp_image_new_custom_ref(((void*)0), buffer,
                                                       free_mmal_buffer);
    if (!new_ref) {
        mmal_buffer_header_release(buffer);
        MP_ERR(hw, "Out of memory.\n");
        return ((void*)0);
    }

    mp_image_setfmt(new_ref, IMGFMT_MMAL);
    new_ref->planes[3] = (void *)buffer;

    struct mp_image dmpi = {0};
    buffer->length = layout_buffer(&dmpi, buffer, &p->params);
    mp_image_copy(&dmpi, hw_image);

    return new_ref;
}

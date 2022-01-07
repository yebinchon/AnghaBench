
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct gl_video {int num_dr_buffers; struct dr_buffer* dr_buffers; int ra; } ;
struct dr_buffer {TYPE_1__* buf; int mpi; } ;
struct TYPE_2__ {int * data; } ;


 int MP_TARRAY_REMOVE_AT (struct dr_buffer*,int,int) ;
 int assert (int) ;
 int ra_buf_free (int ,TYPE_1__**) ;

__attribute__((used)) static void gl_video_dr_free_buffer(void *opaque, uint8_t *data)
{
    struct gl_video *p = opaque;

    for (int n = 0; n < p->num_dr_buffers; n++) {
        struct dr_buffer *buffer = &p->dr_buffers[n];
        if (buffer->buf->data == data) {
            assert(!buffer->mpi);
            ra_buf_free(p->ra, &buffer->buf);
            MP_TARRAY_REMOVE_AT(p->dr_buffers, p->num_dr_buffers, n);
            return;
        }
    }

    assert(0);
}

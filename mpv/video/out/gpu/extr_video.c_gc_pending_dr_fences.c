
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_image {int dummy; } ;
struct gl_video {int num_dr_buffers; TYPE_2__* ra; struct dr_buffer* dr_buffers; } ;
struct dr_buffer {struct mp_image* mpi; int buf; } ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {int (* buf_poll ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;
 int talloc_free (struct mp_image*) ;

__attribute__((used)) static void gc_pending_dr_fences(struct gl_video *p, bool force)
{
again:;
    for (int n = 0; n < p->num_dr_buffers; n++) {
        struct dr_buffer *buffer = &p->dr_buffers[n];
        if (!buffer->mpi)
            continue;

        bool res = p->ra->fns->buf_poll(p->ra, buffer->buf);
        if (res || force) {







            struct mp_image *ref = buffer->mpi;
            buffer->mpi = ((void*)0);
            talloc_free(ref);
            goto again;
        }
    }
}

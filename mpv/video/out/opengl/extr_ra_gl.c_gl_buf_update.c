
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_buf_gl {int target; int buffer; } ;
struct TYPE_4__ {int host_mutable; } ;
struct ra_buf {TYPE_1__ params; struct ra_buf_gl* priv; } ;
struct ra {int dummy; } ;
typedef int ptrdiff_t ;
struct TYPE_5__ {int (* BindBuffer ) (int ,int ) ;int (* BufferSubData ) (int ,int ,size_t,void const*) ;} ;
typedef TYPE_2__ GL ;


 int assert (int ) ;
 TYPE_2__* ra_gl_get (struct ra*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,size_t,void const*) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static void gl_buf_update(struct ra *ra, struct ra_buf *buf, ptrdiff_t offset,
                          const void *data, size_t size)
{
    GL *gl = ra_gl_get(ra);
    struct ra_buf_gl *buf_gl = buf->priv;
    assert(buf->params.host_mutable);

    gl->BindBuffer(buf_gl->target, buf_gl->buffer);
    gl->BufferSubData(buf_gl->target, offset, size, data);
    gl->BindBuffer(buf_gl->target, 0);
}

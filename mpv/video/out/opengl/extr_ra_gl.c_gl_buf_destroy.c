
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_buf_gl {int buffer; int target; scalar_t__ data; scalar_t__ fence; struct ra_buf_gl* priv; } ;
struct ra_buf {int buffer; int target; scalar_t__ data; scalar_t__ fence; struct ra_buf* priv; } ;
struct ra {int dummy; } ;
struct TYPE_3__ {int (* DeleteBuffers ) (int,int *) ;int (* BindBuffer ) (int ,int ) ;int (* UnmapBuffer ) (int ) ;int (* DeleteSync ) (scalar_t__) ;} ;
typedef TYPE_1__ GL ;


 TYPE_1__* ra_gl_get (struct ra*) ;
 int stub1 (scalar_t__) ;
 int stub2 (int ,int ) ;
 int stub3 (int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int,int *) ;
 int talloc_free (struct ra_buf_gl*) ;

__attribute__((used)) static void gl_buf_destroy(struct ra *ra, struct ra_buf *buf)
{
    if (!buf)
        return;

    GL *gl = ra_gl_get(ra);
    struct ra_buf_gl *buf_gl = buf->priv;

    if (buf_gl->fence)
        gl->DeleteSync(buf_gl->fence);

    if (buf->data) {
        gl->BindBuffer(buf_gl->target, buf_gl->buffer);
        gl->UnmapBuffer(buf_gl->target);
        gl->BindBuffer(buf_gl->target, 0);
    }
    gl->DeleteBuffers(1, &buf_gl->buffer);

    talloc_free(buf_gl);
    talloc_free(buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_buf_gl {int * fence; } ;
struct ra_buf {struct ra_buf_gl* priv; int data; } ;
struct ra {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* ClientWaitSync ) (int *,int ,int ) ;int (* DeleteSync ) (int *) ;} ;
typedef scalar_t__ GLenum ;
typedef TYPE_1__ GL ;


 scalar_t__ GL_ALREADY_SIGNALED ;
 TYPE_1__* ra_gl_get (struct ra*) ;
 scalar_t__ stub1 (int *,int ,int ) ;
 int stub2 (int *) ;

__attribute__((used)) static bool gl_buf_poll(struct ra *ra, struct ra_buf *buf)
{


    if (!buf->data)
        return 1;

    GL *gl = ra_gl_get(ra);
    struct ra_buf_gl *buf_gl = buf->priv;

    if (buf_gl->fence) {
        GLenum res = gl->ClientWaitSync(buf_gl->fence, 0, 0);
        if (res == GL_ALREADY_SIGNALED) {
            gl->DeleteSync(buf_gl->fence);
            buf_gl->fence = ((void*)0);
        }
    }

    return !buf_gl->fence;
}

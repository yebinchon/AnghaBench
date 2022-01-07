
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_renderpass_input {int type; int dim_m; scalar_t__ offset; int dim_v; } ;
struct gl_vao {int num_entries; int stride; struct ra_renderpass_input* entries; TYPE_1__* gl; } ;
struct TYPE_2__ {int (* VertexAttribPointer ) (int,int ,int ,int,int ,void*) ;int (* EnableVertexAttribArray ) (int) ;} ;
typedef int GLenum ;
typedef TYPE_1__ GL ;


 int GL_FLOAT ;
 int GL_INT ;
 int GL_UNSIGNED_BYTE ;



 int abort () ;
 int assert (int) ;
 int stub1 (int) ;
 int stub2 (int,int ,int ,int,int ,void*) ;

__attribute__((used)) static void gl_vao_enable_attribs(struct gl_vao *vao)
{
    GL *gl = vao->gl;

    for (int n = 0; n < vao->num_entries; n++) {
        const struct ra_renderpass_input *e = &vao->entries[n];
        GLenum type = 0;
        bool normalized = 0;
        switch (e->type) {
        case 128:
            type = GL_INT;
            break;
        case 129:
            type = GL_FLOAT;
            break;
        case 130:
            type = GL_UNSIGNED_BYTE;
            normalized = 1;
            break;
        default:
            abort();
        }
        assert(e->dim_m == 1);

        gl->EnableVertexAttribArray(n);
        gl->VertexAttribPointer(n, e->dim_v, type, normalized,
                                vao->stride, (void *)(intptr_t)e->offset);
    }
}

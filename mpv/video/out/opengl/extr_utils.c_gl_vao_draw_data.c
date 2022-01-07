
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_vao {size_t stride; int buffer; TYPE_1__* gl; } ;
struct TYPE_2__ {int (* DrawArrays ) (int ,int ,size_t) ;int (* BindBuffer ) (int ,int ) ;int (* BufferData ) (int ,size_t,void*,int ) ;} ;
typedef int GLenum ;
typedef TYPE_1__ GL ;


 int GL_ARRAY_BUFFER ;
 int GL_STREAM_DRAW ;
 int gl_vao_bind (struct gl_vao*) ;
 int gl_vao_unbind (struct gl_vao*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,size_t,void*,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ,size_t) ;

void gl_vao_draw_data(struct gl_vao *vao, GLenum prim, void *ptr, size_t num)
{
    GL *gl = vao->gl;

    if (ptr) {
        gl->BindBuffer(GL_ARRAY_BUFFER, vao->buffer);
        gl->BufferData(GL_ARRAY_BUFFER, num * vao->stride, ptr, GL_STREAM_DRAW);
        gl->BindBuffer(GL_ARRAY_BUFFER, 0);
    }

    gl_vao_bind(vao);

    gl->DrawArrays(prim, 0, num);

    gl_vao_unbind(vao);
}

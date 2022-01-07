
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_vao {int buffer; int vao; TYPE_1__* gl; } ;
struct TYPE_2__ {int (* BindBuffer ) (int ,int ) ;int (* BindVertexArray ) (int ) ;} ;
typedef TYPE_1__ GL ;


 int GL_ARRAY_BUFFER ;
 int gl_vao_enable_attribs (struct gl_vao*) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static void gl_vao_bind(struct gl_vao *vao)
{
    GL *gl = vao->gl;

    if (gl->BindVertexArray) {
        gl->BindVertexArray(vao->vao);
    } else {
        gl->BindBuffer(GL_ARRAY_BUFFER, vao->buffer);
        gl_vao_enable_attribs(vao);
        gl->BindBuffer(GL_ARRAY_BUFFER, 0);
    }
}

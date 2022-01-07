
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_vao {int num_entries; TYPE_1__* gl; } ;
struct TYPE_2__ {int (* DisableVertexAttribArray ) (int) ;int (* BindVertexArray ) (int ) ;} ;
typedef TYPE_1__ GL ;


 int stub1 (int ) ;
 int stub2 (int) ;

__attribute__((used)) static void gl_vao_unbind(struct gl_vao *vao)
{
    GL *gl = vao->gl;

    if (gl->BindVertexArray) {
        gl->BindVertexArray(0);
    } else {
        for (int n = 0; n < vao->num_entries; n++)
            gl->DisableVertexAttribArray(n);
    }
}

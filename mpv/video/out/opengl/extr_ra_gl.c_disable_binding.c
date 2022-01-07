
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_tex_gl {int internal_format; int target; } ;
struct TYPE_6__ {int render_src; } ;
struct ra_tex {TYPE_2__ params; struct ra_tex_gl* priv; } ;
struct ra_renderpass_input_val {size_t index; scalar_t__ data; } ;
struct ra_renderpass_input {int type; scalar_t__ binding; } ;
struct TYPE_5__ {struct ra_renderpass_input* inputs; } ;
struct ra_renderpass {TYPE_1__ params; } ;
struct ra {int dummy; } ;
struct TYPE_7__ {int (* BindBufferBase ) (int ,scalar_t__,int ) ;int (* BindImageTexture ) (scalar_t__,int ,int ,int ,int ,int ,int ) ;int (* BindTexture ) (int ,int ) ;int (* ActiveTexture ) (scalar_t__) ;} ;
typedef TYPE_3__ GL ;


 int GL_FALSE ;
 int GL_SHADER_STORAGE_BUFFER ;
 scalar_t__ GL_TEXTURE0 ;
 int GL_WRITE_ONLY ;



 int assert (int ) ;
 TYPE_3__* ra_gl_get (struct ra*) ;
 int stub1 (scalar_t__) ;
 int stub2 (int ,int ) ;
 int stub3 (scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int stub4 (int ,scalar_t__,int ) ;

__attribute__((used)) static void disable_binding(struct ra *ra, struct ra_renderpass *pass,
                           struct ra_renderpass_input_val *val)
{
    GL *gl = ra_gl_get(ra);

    struct ra_renderpass_input *input = &pass->params.inputs[val->index];

    switch (input->type) {
    case 129:
    case 128: {
        struct ra_tex *tex = *(struct ra_tex **)val->data;
        struct ra_tex_gl *tex_gl = tex->priv;
        assert(tex->params.render_src);
        if (input->type == 128) {
            gl->ActiveTexture(GL_TEXTURE0 + input->binding);
            gl->BindTexture(tex_gl->target, 0);
        } else {
            gl->BindImageTexture(input->binding, 0, 0, GL_FALSE, 0,
                                 GL_WRITE_ONLY, tex_gl->internal_format);
        }
        break;
    }
    case 130:
        gl->BindBufferBase(GL_SHADER_STORAGE_BUFFER, input->binding, 0);
        break;
    }
}

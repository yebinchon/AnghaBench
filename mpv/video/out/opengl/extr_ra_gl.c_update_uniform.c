
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_tex_gl {int texture; int target; int internal_format; } ;
struct TYPE_6__ {int storage_dst; int render_src; } ;
struct ra_tex {TYPE_2__ params; struct ra_tex_gl* priv; } ;
struct ra_renderpass_input_val {size_t index; float* data; } ;
struct ra_renderpass_input {int type; int dim_v; int dim_m; scalar_t__ binding; } ;
struct ra_renderpass_gl {size_t num_uniform_loc; int * uniform_loc; } ;
struct TYPE_5__ {struct ra_renderpass_input* inputs; } ;
struct ra_renderpass {TYPE_1__ params; struct ra_renderpass_gl* priv; } ;
struct ra_buf_gl {int target; int buffer; } ;
struct ra_buf {struct ra_buf_gl* priv; } ;
struct ra {int dummy; } ;
struct TYPE_7__ {int (* MemoryBarrier ) (int ) ;int (* BindBufferBase ) (int ,scalar_t__,int ) ;int (* BindTexture ) (int ,int ) ;int (* ActiveTexture ) (scalar_t__) ;int (* BindImageTexture ) (scalar_t__,int ,int ,int ,int ,int ,int ) ;int (* UniformMatrix3fv ) (int ,int,int ,float*) ;int (* UniformMatrix2fv ) (int ,int,int ,float*) ;int (* Uniform4f ) (int ,float,float,float,float) ;int (* Uniform3f ) (int ,float,float,float) ;int (* Uniform2f ) (int ,float,float) ;int (* Uniform1f ) (int ,float) ;int (* Uniform1i ) (int ,int) ;} ;
typedef int GLint ;
typedef TYPE_3__ GL ;


 int GL_FALSE ;
 scalar_t__ GL_TEXTURE0 ;
 int GL_WRITE_ONLY ;






 int abort () ;
 int assert (int) ;
 TYPE_3__* ra_gl_get (struct ra*) ;
 int stub1 (int ,int) ;
 int stub10 (int ,int ) ;
 int stub11 (int ,scalar_t__,int ) ;
 int stub12 (int ) ;
 int stub2 (int ,float) ;
 int stub3 (int ,float,float) ;
 int stub4 (int ,float,float,float) ;
 int stub5 (int ,float,float,float,float) ;
 int stub6 (int ,int,int ,float*) ;
 int stub7 (int ,int,int ,float*) ;
 int stub8 (scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int stub9 (scalar_t__) ;

__attribute__((used)) static void update_uniform(struct ra *ra, struct ra_renderpass *pass,
                           struct ra_renderpass_input_val *val)
{
    GL *gl = ra_gl_get(ra);
    struct ra_renderpass_gl *pass_gl = pass->priv;

    struct ra_renderpass_input *input = &pass->params.inputs[val->index];
    assert(val->index >= 0 && val->index < pass_gl->num_uniform_loc);
    GLint loc = pass_gl->uniform_loc[val->index];

    switch (input->type) {
    case 129: {
        assert(input->dim_v * input->dim_m == 1);
        if (loc < 0)
            break;
        gl->Uniform1i(loc, *(int *)val->data);
        break;
    }
    case 131: {
        float *f = val->data;
        if (loc < 0)
            break;
        if (input->dim_m == 1) {
            switch (input->dim_v) {
            case 1: gl->Uniform1f(loc, f[0]); break;
            case 2: gl->Uniform2f(loc, f[0], f[1]); break;
            case 3: gl->Uniform3f(loc, f[0], f[1], f[2]); break;
            case 4: gl->Uniform4f(loc, f[0], f[1], f[2], f[3]); break;
            default: abort();
            }
        } else if (input->dim_v == 2 && input->dim_m == 2) {
            gl->UniformMatrix2fv(loc, 1, GL_FALSE, f);
        } else if (input->dim_v == 3 && input->dim_m == 3) {
            gl->UniformMatrix3fv(loc, 1, GL_FALSE, f);
        } else {
            abort();
        }
        break;
    }
    case 130: {
        struct ra_tex *tex = *(struct ra_tex **)val->data;
        struct ra_tex_gl *tex_gl = tex->priv;
        assert(tex->params.storage_dst);
        gl->BindImageTexture(input->binding, tex_gl->texture, 0, GL_FALSE, 0,
                             GL_WRITE_ONLY, tex_gl->internal_format);
        break;
    }
    case 128: {
        struct ra_tex *tex = *(struct ra_tex **)val->data;
        struct ra_tex_gl *tex_gl = tex->priv;
        assert(tex->params.render_src);
        gl->ActiveTexture(GL_TEXTURE0 + input->binding);
        gl->BindTexture(tex_gl->target, tex_gl->texture);
        break;
    }
    case 133:
    case 132: {
        struct ra_buf *buf = *(struct ra_buf **)val->data;
        struct ra_buf_gl *buf_gl = buf->priv;
        gl->BindBufferBase(buf_gl->target, input->binding, buf_gl->buffer);

        if (input->type == 132)
            gl->MemoryBarrier(buf_gl->target);
        break;
    }
    default:
        abort();
    }
}

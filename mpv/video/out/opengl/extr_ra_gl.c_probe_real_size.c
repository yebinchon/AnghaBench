
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_format {int num_components; scalar_t__* component_depth; struct gl_format* priv; } ;
struct gl_format {scalar_t__ format; int type; int internal_format; } ;
struct TYPE_3__ {int (* DeleteTextures ) (int,int *) ;int (* GetTexLevelParameteriv ) (int ,int ,int const,scalar_t__*) ;int (* TexImage2D ) (int ,int ,int ,int,int,int ,scalar_t__,int ,int *) ;int (* BindTexture ) (int ,int ) ;int (* GenTextures ) (int,int *) ;scalar_t__ es; } ;
typedef int GLuint ;
typedef scalar_t__ GLint ;
typedef int GLenum ;
typedef TYPE_1__ GL ;


 scalar_t__ GL_LUMINANCE ;
 scalar_t__ GL_LUMINANCE_ALPHA ;
 int GL_TEXTURE_2D ;
 int const GL_TEXTURE_ALPHA_SIZE ;
 int const GL_TEXTURE_BLUE_SIZE ;
 int const GL_TEXTURE_GREEN_SIZE ;
 int const GL_TEXTURE_LUMINANCE_SIZE ;
 int const GL_TEXTURE_RED_SIZE ;
 int MP_ARRAY_SIZE (int const*) ;
 int assert (int) ;
 int stub1 (int,int *) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int ,int,int,int ,scalar_t__,int ,int *) ;
 int stub4 (int ,int ,int const,scalar_t__*) ;
 int stub5 (int,int *) ;

__attribute__((used)) static void probe_real_size(GL *gl, struct ra_format *fmt)
{
    const struct gl_format *gl_fmt = fmt->priv;

    if (!gl->GetTexLevelParameteriv)
        return;

    bool is_la = gl_fmt->format == GL_LUMINANCE ||
                 gl_fmt->format == GL_LUMINANCE_ALPHA;
    if (is_la && gl->es)
        return;

    GLuint tex;
    gl->GenTextures(1, &tex);
    gl->BindTexture(GL_TEXTURE_2D, tex);
    gl->TexImage2D(GL_TEXTURE_2D, 0, gl_fmt->internal_format, 64, 64, 0,
                   gl_fmt->format, gl_fmt->type, ((void*)0));
    for (int i = 0; i < fmt->num_components; i++) {
        const GLenum pnames[] = {
            GL_TEXTURE_RED_SIZE,
            GL_TEXTURE_GREEN_SIZE,
            GL_TEXTURE_BLUE_SIZE,
            GL_TEXTURE_ALPHA_SIZE,
            GL_TEXTURE_LUMINANCE_SIZE,
            GL_TEXTURE_ALPHA_SIZE,
        };
        int comp = is_la ? i + 4 : i;
        assert(comp < MP_ARRAY_SIZE(pnames));
        GLint param = -1;
        gl->GetTexLevelParameteriv(GL_TEXTURE_2D, 0, pnames[comp], &param);
        fmt->component_depth[i] = param > 0 ? param : 0;
    }
    gl->DeleteTextures(1, &tex);
}

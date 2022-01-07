
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra {int log; } ;
struct TYPE_3__ {int (* DeleteShader ) (int ) ;int (* AttachShader ) (int ,int ) ;int (* GetTranslatedShaderSourceANGLE ) (int ,int,int *,char const*) ;int (* GetShaderiv ) (int ,int ,int*) ;int (* GetShaderInfoLog ) (int ,int,int *,char const*) ;int (* CompileShader ) (int ) ;int (* ShaderSource ) (int ,int,char const**,int *) ;int (* CreateShader ) (int ) ;} ;
typedef int GLuint ;
typedef int GLint ;
typedef int GLenum ;
typedef char const GLchar ;
typedef TYPE_1__ GL ;


 int GL_COMPILE_STATUS ;
 int GL_INFO_LOG_LENGTH ;
 int GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE ;
 int MP_DBG (struct ra*,char*) ;
 int MP_MSG (struct ra*,int,char*,char const*,...) ;
 int MSGL_DEBUG ;
 int MSGL_ERR ;
 int MSGL_V ;
 int mp_log_source (int ,int,char const*) ;
 scalar_t__ mp_msg_test (int ,int) ;
 TYPE_1__* ra_gl_get (struct ra*) ;
 char* shader_typestr (int ) ;
 int stub1 (int ) ;
 int stub10 (int ) ;
 int stub2 (int ,int,char const**,int *) ;
 int stub3 (int ) ;
 int stub4 (int ,int ,int*) ;
 int stub5 (int ,int ,int*) ;
 int stub6 (int ,int,int *,char const*) ;
 int stub7 (int ,int ,int*) ;
 int stub8 (int ,int,int *,char const*) ;
 int stub9 (int ,int ) ;
 int talloc_free (char const*) ;
 char* talloc_zero_size (int *,int) ;

__attribute__((used)) static void compile_attach_shader(struct ra *ra, GLuint program,
                                  GLenum type, const char *source, bool *ok)
{
    GL *gl = ra_gl_get(ra);

    GLuint shader = gl->CreateShader(type);
    gl->ShaderSource(shader, 1, &source, ((void*)0));
    gl->CompileShader(shader);
    GLint status = 0;
    gl->GetShaderiv(shader, GL_COMPILE_STATUS, &status);
    GLint log_length = 0;
    gl->GetShaderiv(shader, GL_INFO_LOG_LENGTH, &log_length);

    int pri = status ? (log_length > 1 ? MSGL_V : MSGL_DEBUG) : MSGL_ERR;
    const char *typestr = shader_typestr(type);
    if (mp_msg_test(ra->log, pri)) {
        MP_MSG(ra, pri, "%s shader source:\n", typestr);
        mp_log_source(ra->log, pri, source);
    }
    if (log_length > 1) {
        GLchar *logstr = talloc_zero_size(((void*)0), log_length + 1);
        gl->GetShaderInfoLog(shader, log_length, ((void*)0), logstr);
        MP_MSG(ra, pri, "%s shader compile log (status=%d):\n%s\n",
               typestr, status, logstr);
        talloc_free(logstr);
    }
    if (gl->GetTranslatedShaderSourceANGLE && mp_msg_test(ra->log, MSGL_DEBUG)) {
        GLint len = 0;
        gl->GetShaderiv(shader, GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE, &len);
        if (len > 0) {
            GLchar *sstr = talloc_zero_size(((void*)0), len + 1);
            gl->GetTranslatedShaderSourceANGLE(shader, len, ((void*)0), sstr);
            MP_DBG(ra, "Translated shader:\n");
            mp_log_source(ra->log, MSGL_DEBUG, sstr);
        }
    }

    gl->AttachShader(program, shader);
    gl->DeleteShader(shader);

    *ok &= status;
}

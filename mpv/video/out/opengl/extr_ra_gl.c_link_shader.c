
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra {int log; } ;
struct TYPE_3__ {int (* GetProgramInfoLog ) (int ,int,int *,int *) ;int (* GetProgramiv ) (int ,int ,int*) ;int (* LinkProgram ) (int ) ;} ;
typedef int GLuint ;
typedef int GLint ;
typedef int GLchar ;
typedef TYPE_1__ GL ;


 int GL_INFO_LOG_LENGTH ;
 int GL_LINK_STATUS ;
 int MP_MSG (struct ra*,int,char*,int,int *) ;
 int MSGL_DEBUG ;
 int MSGL_ERR ;
 int MSGL_V ;
 scalar_t__ mp_msg_test (int ,int) ;
 TYPE_1__* ra_gl_get (struct ra*) ;
 int stub1 (int ) ;
 int stub2 (int ,int ,int*) ;
 int stub3 (int ,int ,int*) ;
 int stub4 (int ,int,int *,int *) ;
 int talloc_free (int *) ;
 int * talloc_zero_size (int *,int) ;

__attribute__((used)) static void link_shader(struct ra *ra, GLuint program, bool *ok)
{
    GL *gl = ra_gl_get(ra);

    gl->LinkProgram(program);
    GLint status = 0;
    gl->GetProgramiv(program, GL_LINK_STATUS, &status);
    GLint log_length = 0;
    gl->GetProgramiv(program, GL_INFO_LOG_LENGTH, &log_length);

    int pri = status ? (log_length > 1 ? MSGL_V : MSGL_DEBUG) : MSGL_ERR;
    if (mp_msg_test(ra->log, pri)) {
        GLchar *logstr = talloc_zero_size(((void*)0), log_length + 1);
        gl->GetProgramInfoLog(program, log_length, ((void*)0), logstr);
        MP_MSG(ra, pri, "shader link log (status=%d): %s\n", status, logstr);
        talloc_free(logstr);
    }

    *ok &= status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* GetError ) () ;} ;
typedef scalar_t__ GLenum ;
typedef TYPE_1__ GL ;


 scalar_t__ GL_NO_ERROR ;
 int MSGL_ERR ;
 int gl_error_to_string (scalar_t__) ;
 int mp_msg (struct mp_log*,int ,char*,char const*,int ) ;
 scalar_t__ stub1 () ;

void gl_check_error(GL *gl, struct mp_log *log, const char *info)
{
    for (;;) {
        GLenum error = gl->GetError();
        if (error == GL_NO_ERROR)
            break;
        mp_msg(log, MSGL_ERR, "%s: OpenGL error %s.\n", info,
               gl_error_to_string(error));
    }
}

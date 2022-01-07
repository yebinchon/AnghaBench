
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* p_glViewport ) (int ,int ,double,double) ;int (* p_glLoadMatrixd ) (double const*) ;int (* p_glMatrixMode ) (int ) ;} ;
struct TYPE_3__ {TYPE_2__ gl; } ;
struct wined3d_gl_info {TYPE_1__ gl_ops; scalar_t__* supported; } ;
typedef double UINT ;
typedef double GLdouble ;


 int GL_PROJECTION ;
 size_t WINED3D_GL_LEGACY_CONTEXT ;
 int checkGLcall (char*) ;
 int stub1 (int ) ;
 int stub2 (double const*) ;
 int stub3 (int ,int ,double,double) ;

__attribute__((used)) static void set_blit_dimension(const struct wined3d_gl_info *gl_info, UINT width, UINT height)
{
    const GLdouble projection[] =
    {
        2.0 / width, 0.0, 0.0, 0.0,
                0.0, 2.0 / height, 0.0, 0.0,
                0.0, 0.0, 2.0, 0.0,
               -1.0, -1.0, -1.0, 1.0,
    };

    if (gl_info->supported[WINED3D_GL_LEGACY_CONTEXT])
    {
        gl_info->gl_ops.gl.p_glMatrixMode(GL_PROJECTION);
        checkGLcall("glMatrixMode(GL_PROJECTION)");
        gl_info->gl_ops.gl.p_glLoadMatrixd(projection);
        checkGLcall("glLoadMatrixd");
    }
    gl_info->gl_ops.gl.p_glViewport(0, 0, width, height);
    checkGLcall("glViewport");
}

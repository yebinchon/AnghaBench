
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_texture {int target; } ;
struct TYPE_3__ {int (* p_glDisable ) (int const) ;int (* p_glEnable ) (int const) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; scalar_t__* supported; } ;


 size_t ARB_TEXTURE_CUBE_MAP ;
 size_t ARB_TEXTURE_RECTANGLE ;





 int checkGLcall (char*) ;
 int stub1 (int) ;
 int stub10 (int const) ;
 int stub11 (int const) ;
 int stub12 (int const) ;
 int stub13 (int) ;
 int stub14 (int) ;
 int stub15 (int const) ;
 int stub16 (int) ;
 int stub17 (int const) ;
 int stub18 (int const) ;
 int stub19 (int const) ;
 int stub2 (int) ;
 int stub20 (int const) ;
 int stub21 (int const) ;
 int stub22 (int const) ;
 int stub23 (int const) ;
 int stub24 (int const) ;
 int stub25 (int const) ;
 int stub26 (int const) ;
 int stub27 (int const) ;
 int stub28 (int const) ;
 int stub29 (int const) ;
 int stub3 (int) ;
 int stub30 (int const) ;
 int stub4 (int) ;
 int stub5 (int const) ;
 int stub6 (int const) ;
 int stub7 (int) ;
 int stub8 (int) ;
 int stub9 (int) ;

void texture_activate_dimensions(const struct wined3d_texture *texture, const struct wined3d_gl_info *gl_info)
{
    if (texture)
    {
        switch (texture->target)
        {
            case 132:
                gl_info->gl_ops.gl.p_glDisable(131);
                checkGLcall("glDisable(GL_TEXTURE_2D)");
                gl_info->gl_ops.gl.p_glDisable(130);
                checkGLcall("glDisable(GL_TEXTURE_3D)");
                if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
                {
                    gl_info->gl_ops.gl.p_glDisable(129);
                    checkGLcall("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
                }
                if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
                {
                    gl_info->gl_ops.gl.p_glDisable(128);
                    checkGLcall("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
                }
                gl_info->gl_ops.gl.p_glEnable(132);
                checkGLcall("glEnable(GL_TEXTURE_1D)");
                break;
            case 131:
                gl_info->gl_ops.gl.p_glDisable(132);
                checkGLcall("glDisable(GL_TEXTURE_1D)");
                gl_info->gl_ops.gl.p_glDisable(130);
                checkGLcall("glDisable(GL_TEXTURE_3D)");
                if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
                {
                    gl_info->gl_ops.gl.p_glDisable(129);
                    checkGLcall("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
                }
                if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
                {
                    gl_info->gl_ops.gl.p_glDisable(128);
                    checkGLcall("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
                }
                gl_info->gl_ops.gl.p_glEnable(131);
                checkGLcall("glEnable(GL_TEXTURE_2D)");
                break;
            case 128:
                gl_info->gl_ops.gl.p_glDisable(132);
                checkGLcall("glDisable(GL_TEXTURE_1D)");
                gl_info->gl_ops.gl.p_glDisable(131);
                checkGLcall("glDisable(GL_TEXTURE_2D)");
                gl_info->gl_ops.gl.p_glDisable(130);
                checkGLcall("glDisable(GL_TEXTURE_3D)");
                if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
                {
                    gl_info->gl_ops.gl.p_glDisable(129);
                    checkGLcall("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
                }
                gl_info->gl_ops.gl.p_glEnable(128);
                checkGLcall("glEnable(GL_TEXTURE_RECTANGLE_ARB)");
                break;
            case 130:
                if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
                {
                    gl_info->gl_ops.gl.p_glDisable(129);
                    checkGLcall("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
                }
                if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
                {
                    gl_info->gl_ops.gl.p_glDisable(128);
                    checkGLcall("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
                }
                gl_info->gl_ops.gl.p_glDisable(132);
                checkGLcall("glDisable(GL_TEXTURE_1D)");
                gl_info->gl_ops.gl.p_glDisable(131);
                checkGLcall("glDisable(GL_TEXTURE_2D)");
                gl_info->gl_ops.gl.p_glEnable(130);
                checkGLcall("glEnable(GL_TEXTURE_3D)");
                break;
            case 129:
                gl_info->gl_ops.gl.p_glDisable(132);
                checkGLcall("glDisable(GL_TEXTURE_1D)");
                gl_info->gl_ops.gl.p_glDisable(131);
                checkGLcall("glDisable(GL_TEXTURE_2D)");
                gl_info->gl_ops.gl.p_glDisable(130);
                checkGLcall("glDisable(GL_TEXTURE_3D)");
                if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
                {
                    gl_info->gl_ops.gl.p_glDisable(128);
                    checkGLcall("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
                }
                gl_info->gl_ops.gl.p_glEnable(129);
                checkGLcall("glEnable(GL_TEXTURE_CUBE_MAP_ARB)");
              break;
        }
    }
    else
    {
        gl_info->gl_ops.gl.p_glDisable(132);
        checkGLcall("glDisable(GL_TEXTURE_1D)");
        gl_info->gl_ops.gl.p_glEnable(131);
        checkGLcall("glEnable(GL_TEXTURE_2D)");
        gl_info->gl_ops.gl.p_glDisable(130);
        checkGLcall("glDisable(GL_TEXTURE_3D)");
        if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
        {
            gl_info->gl_ops.gl.p_glDisable(129);
            checkGLcall("glDisable(GL_TEXTURE_CUBE_MAP_ARB)");
        }
        if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
        {
            gl_info->gl_ops.gl.p_glDisable(128);
            checkGLcall("glDisable(GL_TEXTURE_RECTANGLE_ARB)");
        }

    }
}

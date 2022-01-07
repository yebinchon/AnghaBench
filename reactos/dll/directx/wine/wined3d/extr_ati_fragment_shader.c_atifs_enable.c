
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* p_glDisable ) (int ) ;int (* p_glEnable ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; } ;
typedef scalar_t__ BOOL ;


 int GL_FRAGMENT_SHADER_ATI ;
 int checkGLcall (char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void atifs_enable(const struct wined3d_gl_info *gl_info, BOOL enable)
{
    if (enable)
    {
        gl_info->gl_ops.gl.p_glEnable(GL_FRAGMENT_SHADER_ATI);
        checkGLcall("glEnable(GL_FRAGMENT_SHADER_ATI)");
    }
    else
    {
        gl_info->gl_ops.gl.p_glDisable(GL_FRAGMENT_SHADER_ATI);
        checkGLcall("glDisable(GL_FRAGMENT_SHADER_ATI)");
    }
}

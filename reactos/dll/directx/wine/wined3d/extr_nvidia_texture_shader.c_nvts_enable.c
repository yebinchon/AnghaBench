
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


 int GL_TEXTURE_SHADER_NV ;
 int checkGLcall (char*) ;
 int nvrc_enable (struct wined3d_gl_info const*,scalar_t__) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void nvts_enable(const struct wined3d_gl_info *gl_info, BOOL enable)
{
    nvrc_enable(gl_info, enable);
    if (enable)
    {
        gl_info->gl_ops.gl.p_glEnable(GL_TEXTURE_SHADER_NV);
        checkGLcall("glEnable(GL_TEXTURE_SHADER_NV)");
    }
    else
    {
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_SHADER_NV);
        checkGLcall("glDisable(GL_TEXTURE_SHADER_NV)");
    }
}

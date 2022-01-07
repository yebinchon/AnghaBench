
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* p_glDisable ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; } ;


 int GL_FRAGMENT_PROGRAM_ARB ;
 int checkGLcall (char*) ;
 int stub1 (int ) ;

__attribute__((used)) static void arbfp_blit_unset(const struct wined3d_gl_info *gl_info)
{
    gl_info->gl_ops.gl.p_glDisable(GL_FRAGMENT_PROGRAM_ARB);
    checkGLcall("glDisable(GL_FRAGMENT_PROGRAM_ARB)");
}

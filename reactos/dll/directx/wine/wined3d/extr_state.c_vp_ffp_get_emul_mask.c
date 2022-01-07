
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
typedef int DWORD ;


 int GL_EXT_EMUL_ARB_MULTITEXTURE ;
 int GL_EXT_EMUL_EXT_FOG_COORD ;

__attribute__((used)) static DWORD vp_ffp_get_emul_mask(const struct wined3d_gl_info *gl_info)
{
    return GL_EXT_EMUL_ARB_MULTITEXTURE | GL_EXT_EMUL_EXT_FOG_COORD;
}

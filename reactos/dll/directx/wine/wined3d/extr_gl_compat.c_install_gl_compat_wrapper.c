
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int p_glFogCoorddvEXT; int p_glFogCoorddEXT; int p_glFogCoordfvEXT; int p_glFogCoordfEXT; int p_glMultiTexCoord4svARB; int p_glMultiTexCoord2svARB; int p_glMultiTexCoord4fvARB; int p_glMultiTexCoord4fARB; int p_glMultiTexCoord3fvARB; int p_glMultiTexCoord3fARB; int p_glMultiTexCoord2fvARB; int p_glMultiTexCoord2fARB; int p_glMultiTexCoord1fvARB; int p_glMultiTexCoord1fARB; int p_glClientActiveTextureARB; int p_glActiveTexture; } ;
struct TYPE_4__ {int p_glColor4ub; int p_glColor3fv; int p_glColor3f; int p_glColor4fv; int p_glColor4f; int p_glVertex3fv; int p_glVertex3f; int p_glVertex4fv; int p_glVertex4f; int p_glFogfv; int p_glFogf; int p_glFogiv; int p_glFogi; int p_glGetDoublev; int p_glGetFloatv; int p_glGetIntegerv; } ;
struct TYPE_5__ {TYPE_3__ ext; TYPE_1__ gl; } ;
struct wined3d_gl_info {void** supported; TYPE_2__ gl_ops; } ;
typedef enum wined3d_gl_extension { ____Placeholder_wined3d_gl_extension } wined3d_gl_extension ;


 size_t ARB_FRAGMENT_PROGRAM ;
 size_t ARB_FRAGMENT_SHADER ;


 int FIXME (char*,...) ;
 int TRACE (char*) ;
 void* TRUE ;
 int glDisableWINE ;
 int glEnableWINE ;
 int old_fogcoord_glColor4f ;
 int old_fogcoord_glDisable ;
 int old_fogcoord_glEnable ;
 int old_fogcoord_glFogf ;
 int old_fogcoord_glFogfv ;
 int old_fogcoord_glFogi ;
 int old_fogcoord_glFogiv ;
 int old_fogcoord_glVertex4f ;
 int old_multitex_glGetDoublev ;
 int old_multitex_glGetFloatv ;
 int old_multitex_glGetIntegerv ;
 int wine_glActiveTexture ;
 int wine_glClientActiveTextureARB ;
 int wine_glColor3f ;
 int wine_glColor3fv ;
 int wine_glColor4f ;
 int wine_glColor4fv ;
 int wine_glColor4ub ;
 int wine_glDisable ;
 int wine_glEnable ;
 int wine_glFogCoorddEXT ;
 int wine_glFogCoorddvEXT ;
 int wine_glFogCoordfEXT ;
 int wine_glFogCoordfvEXT ;
 int wine_glFogf ;
 int wine_glFogfv ;
 int wine_glFogi ;
 int wine_glFogiv ;
 int wine_glGetDoublev ;
 int wine_glGetFloatv ;
 int wine_glGetIntegerv ;
 int wine_glMultiTexCoord1fARB ;
 int wine_glMultiTexCoord1fvARB ;
 int wine_glMultiTexCoord2fARB ;
 int wine_glMultiTexCoord2fvARB ;
 int wine_glMultiTexCoord2svARB ;
 int wine_glMultiTexCoord3fARB ;
 int wine_glMultiTexCoord3fvARB ;
 int wine_glMultiTexCoord4fARB ;
 int wine_glMultiTexCoord4fvARB ;
 int wine_glMultiTexCoord4svARB ;
 int wine_glVertex3f ;
 int wine_glVertex3fv ;
 int wine_glVertex4f ;
 int wine_glVertex4fv ;

void install_gl_compat_wrapper(struct wined3d_gl_info *gl_info, enum wined3d_gl_extension ext)
{
    switch (ext)
    {
        case 129:
            if (gl_info->supported[129])
                return;
            if (gl_info->gl_ops.ext.p_glActiveTexture == wine_glActiveTexture)
            {
                FIXME("ARB_multitexture emulation hooks already applied.\n");
                return;
            }
            TRACE("Applying GL_ARB_multitexture emulation hooks.\n");
            gl_info->gl_ops.ext.p_glActiveTexture = wine_glActiveTexture;
            gl_info->gl_ops.ext.p_glClientActiveTextureARB = wine_glClientActiveTextureARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord1fARB = wine_glMultiTexCoord1fARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord1fvARB = wine_glMultiTexCoord1fvARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord2fARB = wine_glMultiTexCoord2fARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord2fvARB = wine_glMultiTexCoord2fvARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord3fARB = wine_glMultiTexCoord3fARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord3fvARB = wine_glMultiTexCoord3fvARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord4fARB = wine_glMultiTexCoord4fARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord4fvARB = wine_glMultiTexCoord4fvARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord2svARB = wine_glMultiTexCoord2svARB;
            gl_info->gl_ops.ext.p_glMultiTexCoord4svARB = wine_glMultiTexCoord4svARB;
            old_multitex_glGetIntegerv = gl_info->gl_ops.gl.p_glGetIntegerv;
            gl_info->gl_ops.gl.p_glGetIntegerv = wine_glGetIntegerv;
            old_multitex_glGetFloatv = gl_info->gl_ops.gl.p_glGetFloatv;
            gl_info->gl_ops.gl.p_glGetFloatv = wine_glGetFloatv;
            old_multitex_glGetDoublev = gl_info->gl_ops.gl.p_glGetDoublev;
            gl_info->gl_ops.gl.p_glGetDoublev = wine_glGetDoublev;
            gl_info->supported[129] = TRUE;
            return;

        case 128:
            if (gl_info->supported[128])
                return;
            if (gl_info->gl_ops.gl.p_glFogi == wine_glFogi)
            {
                FIXME("EXT_fog_coord emulation hooks already applied.\n");
                return;
            }
            TRACE("Applying GL_ARB_fog_coord emulation hooks\n");





            if (gl_info->supported[ARB_FRAGMENT_PROGRAM])
            {
                FIXME("GL implementation supports GL_ARB_fragment_program but not GL_EXT_fog_coord\n");
                FIXME("The fog coord emulation will most likely fail\n");
            }
            else if (gl_info->supported[ARB_FRAGMENT_SHADER])
            {
                FIXME("GL implementation supports GL_ARB_fragment_shader but not GL_EXT_fog_coord\n");
                FIXME("The fog coord emulation will most likely fail\n");
            }

            old_fogcoord_glFogi = gl_info->gl_ops.gl.p_glFogi;
            gl_info->gl_ops.gl.p_glFogi = wine_glFogi;
            old_fogcoord_glFogiv = gl_info->gl_ops.gl.p_glFogiv;
            gl_info->gl_ops.gl.p_glFogiv = wine_glFogiv;
            old_fogcoord_glFogf = gl_info->gl_ops.gl.p_glFogf;
            gl_info->gl_ops.gl.p_glFogf = wine_glFogf;
            old_fogcoord_glFogfv = gl_info->gl_ops.gl.p_glFogfv;
            gl_info->gl_ops.gl.p_glFogfv = wine_glFogfv;
            old_fogcoord_glEnable = glEnableWINE;
            glEnableWINE = wine_glEnable;
            old_fogcoord_glDisable = glDisableWINE;
            glDisableWINE = wine_glDisable;

            old_fogcoord_glVertex4f = gl_info->gl_ops.gl.p_glVertex4f;
            gl_info->gl_ops.gl.p_glVertex4f = wine_glVertex4f;
            gl_info->gl_ops.gl.p_glVertex4fv = wine_glVertex4fv;
            gl_info->gl_ops.gl.p_glVertex3f = wine_glVertex3f;
            gl_info->gl_ops.gl.p_glVertex3fv = wine_glVertex3fv;

            old_fogcoord_glColor4f = gl_info->gl_ops.gl.p_glColor4f;
            gl_info->gl_ops.gl.p_glColor4f = wine_glColor4f;
            gl_info->gl_ops.gl.p_glColor4fv = wine_glColor4fv;
            gl_info->gl_ops.gl.p_glColor3f = wine_glColor3f;
            gl_info->gl_ops.gl.p_glColor3fv = wine_glColor3fv;
            gl_info->gl_ops.gl.p_glColor4ub = wine_glColor4ub;

            gl_info->gl_ops.ext.p_glFogCoordfEXT = wine_glFogCoordfEXT;
            gl_info->gl_ops.ext.p_glFogCoordfvEXT = wine_glFogCoordfvEXT;
            gl_info->gl_ops.ext.p_glFogCoorddEXT = wine_glFogCoorddEXT;
            gl_info->gl_ops.ext.p_glFogCoorddvEXT = wine_glFogCoorddvEXT;
            gl_info->supported[128] = TRUE;
            return;

        default:
            FIXME("Extension %u emulation not supported.\n", ext);
    }
}

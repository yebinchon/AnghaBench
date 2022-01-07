
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* p_glGetError ) () ;int (* p_glDisable ) (int ) ;int (* p_glDeleteTextures ) (int,int *) ;int (* p_glGetTexImage ) (int ,int ,int ,int ,int*) ;int (* p_glBindTexture ) (int ,int ) ;int (* p_glEnd ) () ;int (* p_glVertex2f ) (float,float) ;int (* p_glTexCoord2f ) (double,double) ;int (* p_glBegin ) (int ) ;int (* p_glClear ) (int ) ;int (* p_glClearColor ) (int ,int,int ,int ) ;int (* p_glLoadIdentity ) () ;int (* p_glMatrixMode ) (int ) ;int (* p_glViewport ) (int ,int ,int,int) ;int (* p_glDrawBuffer ) (int ) ;int (* p_glEnable ) (int ) ;int (* p_glTexParameteri ) (int ,int ,int ) ;int (* p_glTexImage2D ) (int ,int ,int ,int,int,int ,int ,int ,int const*) ;int (* p_glGenTextures ) (int,int *) ;} ;
struct TYPE_6__ {TYPE_2__ gl; } ;
struct TYPE_4__ {int (* glDeleteFramebuffers ) (int,int *) ;int (* glBindFramebuffer ) (int ,int ) ;int (* glFramebufferTexture2D ) (int ,int ,int ,int ,int ) ;int (* glGenFramebuffers ) (int,int *) ;} ;
struct wined3d_gl_info {TYPE_3__ gl_ops; TYPE_1__ fbo_ops; } ;
typedef int readback ;
typedef int GLuint ;
typedef int GLenum ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int ) ;
 int GL_BGRA ;
 int GL_CLAMP_TO_EDGE ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_FRAMEBUFFER ;
 int GL_LIGHTING ;
 int GL_LINEAR ;
 int GL_MODELVIEW ;
 int GL_NEAREST ;
 int GL_PROJECTION ;
 int GL_RGBA ;
 int GL_RGBA8 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_R ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_TRIANGLE_STRIP ;
 int GL_UNSIGNED_INT_8_8_8_8 ;
 int GL_UNSIGNED_INT_8_8_8_8_REV ;
 int TRACE (char*,int,int) ;
 int TRUE ;
 scalar_t__ color_match (int,int,int) ;
 int memset (int*,int,int) ;
 scalar_t__ stub1 () ;
 int stub10 (int,int *) ;
 int stub11 (int ,int ) ;
 int stub12 (int ,int ,int ,int,int,int ,int ,int ,int const*) ;
 int stub13 (int ,int ,int ) ;
 int stub14 (int ,int ,int ) ;
 int stub15 (int ,int ,int ) ;
 int stub16 (int ,int ,int ) ;
 int stub17 (int ,int ,int ) ;
 int stub18 (int ) ;
 int stub19 (int,int *) ;
 int stub2 (int,int *) ;
 int stub20 (int ,int ) ;
 int stub21 (int ,int ,int ,int ,int ) ;
 int stub22 (int ) ;
 int stub23 (int ,int ,int,int) ;
 int stub24 (int ) ;
 int stub25 (int ) ;
 int stub26 () ;
 int stub27 (int ) ;
 int stub28 () ;
 int stub29 (int ,int,int ,int ) ;
 int stub3 (int ,int ) ;
 int stub30 (int ) ;
 int stub31 (int ) ;
 int stub32 (double,double) ;
 int stub33 (float,float) ;
 int stub34 (double,double) ;
 int stub35 (float,float) ;
 int stub36 (double,double) ;
 int stub37 (float,float) ;
 int stub38 (double,double) ;
 int stub39 (float,float) ;
 int stub4 (int ,int ,int ,int,int,int ,int ,int ,int*) ;
 int stub40 () ;
 int stub41 (int ,int ) ;
 int stub42 (int ,int ,int ,int ,int*) ;
 int stub43 (int ,int ) ;
 int stub44 (int,int *) ;
 int stub45 (int,int *) ;
 int stub46 (int,int *) ;
 int stub47 (int ) ;
 scalar_t__ stub48 () ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ,int ) ;
 int stub8 (int ,int ,int ) ;
 int stub9 (int ,int ,int ) ;

__attribute__((used)) static BOOL check_filter(const struct wined3d_gl_info *gl_info, GLenum internal)
{
    static const DWORD data[] = {0x00000000, 0xffffffff};
    GLuint tex, fbo, buffer;
    DWORD readback[16 * 1];
    BOOL ret = FALSE;
    while (gl_info->gl_ops.gl.p_glGetError());

    gl_info->gl_ops.gl.p_glGenTextures(1, &buffer);
    gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D, buffer);
    memset(readback, 0x7e, sizeof(readback));
    gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, 16, 1, 0,
            GL_RGBA, GL_UNSIGNED_INT_8_8_8_8, readback);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);

    gl_info->gl_ops.gl.p_glGenTextures(1, &tex);
    gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D, tex);
    gl_info->gl_ops.gl.p_glTexImage2D(GL_TEXTURE_2D, 0, internal, 2, 1, 0,
            GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, data);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    gl_info->gl_ops.gl.p_glEnable(GL_TEXTURE_2D);

    gl_info->fbo_ops.glGenFramebuffers(1, &fbo);
    gl_info->fbo_ops.glBindFramebuffer(GL_FRAMEBUFFER, fbo);
    gl_info->fbo_ops.glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, buffer, 0);
    gl_info->gl_ops.gl.p_glDrawBuffer(GL_COLOR_ATTACHMENT0);

    gl_info->gl_ops.gl.p_glViewport(0, 0, 16, 1);
    gl_info->gl_ops.gl.p_glDisable(GL_LIGHTING);
    gl_info->gl_ops.gl.p_glMatrixMode(GL_MODELVIEW);
    gl_info->gl_ops.gl.p_glLoadIdentity();
    gl_info->gl_ops.gl.p_glMatrixMode(GL_PROJECTION);
    gl_info->gl_ops.gl.p_glLoadIdentity();

    gl_info->gl_ops.gl.p_glClearColor(0, 1, 0, 0);
    gl_info->gl_ops.gl.p_glClear(GL_COLOR_BUFFER_BIT);

    gl_info->gl_ops.gl.p_glBegin(GL_TRIANGLE_STRIP);
    gl_info->gl_ops.gl.p_glTexCoord2f(0.0, 0.0);
    gl_info->gl_ops.gl.p_glVertex2f(-1.0f, -1.0f);
    gl_info->gl_ops.gl.p_glTexCoord2f(1.0, 0.0);
    gl_info->gl_ops.gl.p_glVertex2f(1.0f, -1.0f);
    gl_info->gl_ops.gl.p_glTexCoord2f(0.0, 1.0);
    gl_info->gl_ops.gl.p_glVertex2f(-1.0f, 1.0f);
    gl_info->gl_ops.gl.p_glTexCoord2f(1.0, 1.0);
    gl_info->gl_ops.gl.p_glVertex2f(1.0f, 1.0f);
    gl_info->gl_ops.gl.p_glEnd();

    gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D, buffer);
    memset(readback, 0x7f, sizeof(readback));
    gl_info->gl_ops.gl.p_glGetTexImage(GL_TEXTURE_2D, 0, GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, readback);
    if (color_match(readback[6], 0xffffffff, 5) || color_match(readback[6], 0x00000000, 5)
            || color_match(readback[9], 0xffffffff, 5) || color_match(readback[9], 0x00000000, 5))
    {
        TRACE("Read back colors 0x%08x and 0x%08x close to unfiltered color, assuming no filtering\n",
              readback[6], readback[9]);
        ret = FALSE;
    }
    else
    {
        TRACE("Read back colors are 0x%08x and 0x%08x, assuming texture is filtered\n",
              readback[6], readback[9]);
        ret = TRUE;
    }

    gl_info->fbo_ops.glBindFramebuffer(GL_FRAMEBUFFER, 0);
    gl_info->fbo_ops.glDeleteFramebuffers(1, &fbo);
    gl_info->gl_ops.gl.p_glDeleteTextures(1, &tex);
    gl_info->gl_ops.gl.p_glDeleteTextures(1, &buffer);
    gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);

    if (gl_info->gl_ops.gl.p_glGetError())
    {
        FIXME("Error during filtering test for format %x, returning no filtering\n", internal);
        ret = FALSE;
    }

    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {int log; TYPE_2__* x11; } ;
struct TYPE_3__ {scalar_t__ debug; } ;
struct ra_ctx {TYPE_1__ opts; struct vo* vo; struct priv* priv; } ;
struct priv {void* XGetSyncValues; scalar_t__ context; int fbc; } ;
typedef scalar_t__ (* glXCreateContextAttribsARBProc ) (int ,int ,int ,int ,int*) ;
struct TYPE_4__ {int display; int window; int screen; } ;
typedef int GLubyte ;
typedef scalar_t__ GLXContext ;
typedef int GL ;


 int GLX_CONTEXT_CORE_PROFILE_BIT_ARB ;
 int GLX_CONTEXT_DEBUG_BIT_ARB ;
 int GLX_CONTEXT_ES2_PROFILE_BIT_EXT ;
 int GLX_CONTEXT_FLAGS_ARB ;
 int GLX_CONTEXT_MAJOR_VERSION_ARB ;
 int GLX_CONTEXT_MINOR_VERSION_ARB ;
 int GLX_CONTEXT_PROFILE_MASK_ARB ;
 int MPGL_VER_GET_MAJOR (int) ;
 int MPGL_VER_GET_MINOR (int) ;
 int MP_FATAL (struct vo*,char*) ;
 int MP_VERBOSE (struct vo*,char*) ;
 int None ;
 int True ;
 int glXDestroyContext (int ,scalar_t__) ;
 scalar_t__ glXGetProcAddressARB (int const*) ;
 int glXMakeCurrent (int ,int ,scalar_t__) ;
 char* glXQueryExtensionsString (int ,int ) ;
 scalar_t__ gl_check_extension (char const*,char*) ;
 int mpgl_load_functions (int *,void*,char const*,int ) ;
 int ra_gl_ctx_test_version (struct ra_ctx*,int,int) ;
 scalar_t__ strstr (char const*,char*) ;
 int vo_x11_silence_xlib (int) ;

__attribute__((used)) static bool create_context_x11_gl3(struct ra_ctx *ctx, GL *gl, int gl_version,
                                   bool es)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;

    if (p->context)
        return 1;

    if (!ra_gl_ctx_test_version(ctx, gl_version, es))
        return 0;

    glXCreateContextAttribsARBProc glXCreateContextAttribsARB =
        (glXCreateContextAttribsARBProc)
            glXGetProcAddressARB((const GLubyte *)"glXCreateContextAttribsARB");

    const char *glxstr =
        glXQueryExtensionsString(vo->x11->display, vo->x11->screen);
    bool have_ctx_ext = glxstr && !!strstr(glxstr, "GLX_ARB_create_context");

    if (!(have_ctx_ext && glXCreateContextAttribsARB)) {
        return 0;
    }

    int ctx_flags = ctx->opts.debug ? GLX_CONTEXT_DEBUG_BIT_ARB : 0;
    int profile_mask = GLX_CONTEXT_CORE_PROFILE_BIT_ARB;

    if (es) {
        profile_mask = GLX_CONTEXT_ES2_PROFILE_BIT_EXT;
        if (!(glxstr && strstr(glxstr, "GLX_EXT_create_context_es2_profile")))
            return 0;
    }

    int context_attribs[] = {
        GLX_CONTEXT_MAJOR_VERSION_ARB, MPGL_VER_GET_MAJOR(gl_version),
        GLX_CONTEXT_MINOR_VERSION_ARB, MPGL_VER_GET_MINOR(gl_version),
        GLX_CONTEXT_PROFILE_MASK_ARB, profile_mask,
        GLX_CONTEXT_FLAGS_ARB, ctx_flags,
        None
    };
    vo_x11_silence_xlib(1);
    GLXContext context = glXCreateContextAttribsARB(vo->x11->display,
                                                    p->fbc, 0, True,
                                                    context_attribs);
    vo_x11_silence_xlib(-1);
    if (!context)
        return 0;


    if (!glXMakeCurrent(vo->x11->display, vo->x11->window, context)) {
        MP_FATAL(vo, "Could not set GLX context!\n");
        glXDestroyContext(vo->x11->display, context);
        return 0;
    }

    p->context = context;

    mpgl_load_functions(gl, (void *)glXGetProcAddressARB, glxstr, vo->log);

    if (gl_check_extension(glxstr, "GLX_OML_sync_control")) {
        p->XGetSyncValues =
            (void *)glXGetProcAddressARB((const GLubyte *)"glXGetSyncValuesOML");
    }
    if (p->XGetSyncValues)
        MP_VERBOSE(vo, "Using GLX_OML_sync_control.\n");

    return 1;
}

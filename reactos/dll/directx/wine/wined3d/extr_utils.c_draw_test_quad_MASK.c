#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_vec3 {float member_0; float member_1; float member_2; int /*<<< orphan*/  x; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* p_glDrawArrays ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* p_glEnd ) () ;int /*<<< orphan*/  (* p_glVertex3fv ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* p_glColor4f ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glBegin ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glLoadIdentity ) () ;int /*<<< orphan*/  (* p_glMatrixMode ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glDisable ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {scalar_t__ glsl_version; TYPE_2__ gl_ops; int /*<<< orphan*/ * supported; } ;
struct wined3d_color {int /*<<< orphan*/  a; int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
struct wined3d_caps_gl_ctx {void* test_program_id; int /*<<< orphan*/  test_vbo; struct wined3d_gl_info* gl_info; } ;
typedef  void* GLuint ;
typedef  int BOOL ;

/* Variables and functions */
 size_t ARB_FRAGMENT_SHADER ; 
 size_t ARB_VERTEX_BUFFER_OBJECT ; 
 size_t ARB_VERTEX_SHADER ; 
 int FALSE ; 
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_STREAM_DRAW ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct wined3d_vec3 const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (void*,int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct wined3d_gl_info const*,void*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct wined3d_gl_info const*,void*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 () ; 

__attribute__((used)) static void FUNC32(struct wined3d_caps_gl_ctx *ctx, const struct wined3d_vec3 *geometry,
        const struct wined3d_color *color)
{
    const struct wined3d_gl_info *gl_info = ctx->gl_info;
    static const struct wined3d_vec3 default_geometry[] =
    {
        {-1.0f, -1.0f, 0.0f},
        { 1.0f, -1.0f, 0.0f},
        {-1.0f,  1.0f, 0.0f},
        { 1.0f,  1.0f, 0.0f},
    };
    static const char vs_core_header[] =
        "#version 150\n"
        "in vec4 pos;\n"
        "in vec4 color;\n"
        "out vec4 out_color;\n"
        "\n";
    static const char vs_legacy_header[] =
        "#version 120\n"
        "attribute vec4 pos;\n"
        "attribute vec4 color;\n"
        "varying vec4 out_color;\n"
        "\n";
    static const char vs_body[] =
        "void main()\n"
        "{\n"
        "    gl_Position = pos;\n"
        "    out_color = color;\n"
        "}\n";
    static const char fs_core[] =
        "#version 150\n"
        "in vec4 out_color;\n"
        "out vec4 fragment_color;\n"
        "\n"
        "void main()\n"
        "{\n"
        "    fragment_color = out_color;\n"
        "}\n";
    static const char fs_legacy[] =
        "#version 120\n"
        "varying vec4 out_color;\n"
        "\n"
        "void main()\n"
        "{\n"
        "    gl_FragData[0] = out_color;\n"
        "}\n";
    const char *source[2];
    GLuint vs_id, fs_id;
    unsigned int i;

    if (!geometry)
        geometry = default_geometry;

    if (!gl_info->supported[ARB_VERTEX_BUFFER_OBJECT] || !gl_info->supported[ARB_VERTEX_SHADER]
            || !gl_info->supported[ARB_FRAGMENT_SHADER])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_LIGHTING);
        gl_info->gl_ops.gl.p_glMatrixMode(GL_MODELVIEW);
        gl_info->gl_ops.gl.p_glLoadIdentity();
        gl_info->gl_ops.gl.p_glMatrixMode(GL_PROJECTION);
        gl_info->gl_ops.gl.p_glLoadIdentity();

        gl_info->gl_ops.gl.p_glBegin(GL_TRIANGLE_STRIP);
        gl_info->gl_ops.gl.p_glColor4f(color->r, color->g, color->b, color->a);
        for (i = 0; i < 4; ++i)
            gl_info->gl_ops.gl.p_glVertex3fv(&geometry[i].x);
        gl_info->gl_ops.gl.p_glEnd();
        FUNC2("draw quad");
        return;
    }

    if (!ctx->test_vbo)
        FUNC0(FUNC14(1, &ctx->test_vbo));
    FUNC0(FUNC5(GL_ARRAY_BUFFER, ctx->test_vbo));
    FUNC0(FUNC7(GL_ARRAY_BUFFER, sizeof(struct wined3d_vec3) * 4, geometry, GL_STREAM_DRAW));
    FUNC0(FUNC19(0, 3, GL_FLOAT, FALSE, 0, NULL));
    FUNC0(FUNC18(1, color->r, color->g, color->b, color->a));
    FUNC0(FUNC13(0));
    FUNC0(FUNC12(1));

    if (!ctx->test_program_id)
    {
#ifdef __REACTOS__
        /* workaround CORE-15408 crash for many 3D applications.
           VBoxDisp with enabled 3D acceleration only supports OpenGL 2.1 (GLSL 120).
           Wine must not use shaders for OpenGL 3.2 (GLSL 150). */
        BOOL use_glsl_150 = FALSE;
#else
        BOOL use_glsl_150 = gl_info->glsl_version >= FUNC1(1, 50);
#endif

        ctx->test_program_id = FUNC0(FUNC9());

        vs_id = FUNC0(FUNC10(GL_VERTEX_SHADER));
        source[0] = use_glsl_150 ? vs_core_header : vs_legacy_header;
        source[1] = vs_body;
        FUNC0(FUNC16(vs_id, 2, source, NULL));
        FUNC0(FUNC3(ctx->test_program_id, vs_id));
        FUNC0(FUNC11(vs_id));

        fs_id = FUNC0(FUNC10(GL_FRAGMENT_SHADER));
        source[0] = use_glsl_150 ? fs_core : fs_legacy;
        FUNC0(FUNC16(fs_id, 1, source, NULL));
        FUNC0(FUNC3(ctx->test_program_id, fs_id));
        FUNC0(FUNC11(fs_id));

        FUNC0(FUNC4(ctx->test_program_id, 0, "pos"));
        FUNC0(FUNC4(ctx->test_program_id, 1, "color"));

        if (use_glsl_150)
            FUNC0(FUNC6(ctx->test_program_id, 0, "fragment_color"));

        FUNC0(FUNC8(vs_id));
        FUNC20(gl_info, vs_id, FALSE);
        FUNC0(FUNC8(fs_id));
        FUNC20(gl_info, fs_id, FALSE);
        FUNC0(FUNC15(ctx->test_program_id));
        FUNC21(gl_info, ctx->test_program_id);
    }
    FUNC0(FUNC17(ctx->test_program_id));

    gl_info->gl_ops.gl.p_glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

    FUNC0(FUNC17(0));
    FUNC0(FUNC12(0));
    FUNC0(FUNC5(GL_ARRAY_BUFFER, 0));
    FUNC2("draw quad");
}
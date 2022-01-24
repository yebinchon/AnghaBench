#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nk_font_atlas {int dummy; } ;
struct nk_font {int /*<<< orphan*/  handle; } ;
struct nk_context {int dummy; } ;
struct nk_canvas {int /*<<< orphan*/  painter; } ;
struct device {int /*<<< orphan*/  null; scalar_t__ font_tex; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 scalar_t__ GLEW_OK ; 
 int /*<<< orphan*/  GLFW_CONTEXT_VERSION_MAJOR ; 
 int /*<<< orphan*/  GLFW_CONTEXT_VERSION_MINOR ; 
 int GLFW_OPENGL_CORE_PROFILE ; 
 int /*<<< orphan*/  GLFW_OPENGL_FORWARD_COMPAT ; 
 int /*<<< orphan*/  GLFW_OPENGL_PROFILE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int GL_TRUE ; 
 int /*<<< orphan*/  NK_ANTI_ALIASING_ON ; 
 int /*<<< orphan*/  NK_FONT_ATLAS_RGBA32 ; 
 int WINDOW_HEIGHT ; 
 int WINDOW_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (struct nk_context*,struct nk_canvas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nk_context*,struct nk_canvas*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct nk_context*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,void const*,int,int) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int glewExperimental ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct nk_context*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 struct nk_font* FUNC31 (struct nk_font_atlas*,int,int /*<<< orphan*/ ) ; 
 void* FUNC32 (struct nk_font_atlas*,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct nk_font_atlas*) ; 
 int /*<<< orphan*/  FUNC34 (struct nk_font_atlas*) ; 
 int /*<<< orphan*/  FUNC35 (struct nk_font_atlas*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (struct nk_font_atlas*) ; 
 int /*<<< orphan*/  FUNC37 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (struct nk_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC41 (int,int,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,int,int,int,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,int,int,int,int,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,int,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct nk_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scroll_input ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  text_input ; 

int FUNC48(int argc, char *argv[])
{
    /* Platform */
    static GLFWwindow *win;
    int width = 0, height = 0;

    /* GUI */
    struct device device;
    struct nk_font_atlas atlas;
    struct nk_context ctx;

    /* GLFW */
    FUNC18(error_callback);
    if (!FUNC15()) {
        FUNC7(stdout, "[GFLW] failed to init!\n");
        FUNC6(1);
    }
    FUNC23(GLFW_CONTEXT_VERSION_MAJOR, 3);
    FUNC23(GLFW_CONTEXT_VERSION_MINOR, 3);
    FUNC23(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    FUNC23(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    win = FUNC13(WINDOW_WIDTH, WINDOW_HEIGHT, "Demo", NULL, NULL);
    FUNC16(win);
    FUNC20(win, &ctx);
    FUNC17(win, text_input);
    FUNC19(win, scroll_input);
    FUNC14(win, &width, &height);

    /* OpenGL */
    FUNC11(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);
    glewExperimental = 1;
    if (FUNC12() != GLEW_OK) {
        FUNC7(stderr, "Failed to setup GLEW\n");
        FUNC6(1);
    }

    /* GUI */
    {FUNC3(&device);
    {const void *image; int w, h;
    struct nk_font *font;
    FUNC36(&atlas);
    FUNC33(&atlas);
    font = FUNC31(&atlas, 13, 0);
    image = FUNC32(&atlas, &w, &h, NK_FONT_ATLAS_RGBA32);
    FUNC5(&device, image, w, h);
    FUNC35(&atlas, FUNC38((int)device.font_tex), &device.null);
    FUNC39(&ctx, &font->handle);

    FUNC10(GL_TEXTURE_2D);
    while (!FUNC24(win))
    {
        /* input */
        FUNC47(&ctx, win);

        /* draw */
        {struct nk_canvas canvas;
        FUNC0(&ctx, &canvas, 0, 0, 0, width, height, FUNC41(250,250,250));
        {
            FUNC29(canvas.painter, FUNC40(15,15,210,210), 5, FUNC41(247, 230, 154));
            FUNC29(canvas.painter, FUNC40(20,20,200,200), 5, FUNC41(188, 174, 118));
            FUNC25(canvas.painter, FUNC40(30, 30, 150, 20), "Text to draw", 12, &font->handle, FUNC41(188,174,118), FUNC41(0,0,0));
            FUNC29(canvas.painter, FUNC40(250,20,100,100), 0, FUNC41(0,0,255));
            FUNC27(canvas.painter, FUNC40(20,250,100,100), FUNC41(255,0,0));
            FUNC30(canvas.painter, 250, 250, 350, 250, 300, 350, FUNC41(0,255,0));
            FUNC26(canvas.painter, 300, 180, 50, 0, 3.141592654f * 3.0f / 4.0f, FUNC41(255,255,0));

            {float points[12];
            points[0] = 200; points[1] = 250;
            points[2] = 250; points[3] = 350;
            points[4] = 225; points[5] = 350;
            points[6] = 200; points[7] = 300;
            points[8] = 175; points[9] = 350;
            points[10] = 150; points[11] = 350;
            FUNC28(canvas.painter, points, 6, FUNC41(0,0,0));}

            FUNC44(canvas.painter, 15, 10, 200, 10, 2.0f, FUNC41(189,45,75));
            FUNC45(canvas.painter, FUNC40(370, 20, 100, 100), 10, 3, FUNC41(0,0,255));
            FUNC43(canvas.painter, 380, 200, 405, 270, 455, 120, 480, 200, 2, FUNC41(0,150,220));
            FUNC42(canvas.painter, FUNC40(20, 370, 100, 100), 5, FUNC41(0,255,120));
            FUNC46(canvas.painter, 370, 250, 470, 250, 420, 350, 6, FUNC41(255,0,143));
        }
        FUNC1(&ctx, &canvas);}

        /* Draw */
        FUNC14(win, &width, &height);
        FUNC11(0, 0, width, height);
        FUNC8(GL_COLOR_BUFFER_BIT);
        FUNC9(0.2f, 0.2f, 0.2f, 1.0f);
        FUNC2(&device, &ctx, width, height, NK_ANTI_ALIASING_ON);
        FUNC21(win);
    }}}
    FUNC34(&atlas);
    FUNC37(&ctx);
    FUNC4(&device);
    FUNC22();
    return 0;
}
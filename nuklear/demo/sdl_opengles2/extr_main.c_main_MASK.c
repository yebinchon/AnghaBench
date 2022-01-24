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
struct nk_context {int dummy; } ;
typedef  int /*<<< orphan*/  SDL_GLContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_GL_CONTEXT_FLAGS ; 
 int SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG ; 
 int /*<<< orphan*/  SDL_GL_CONTEXT_MAJOR_VERSION ; 
 int /*<<< orphan*/  SDL_GL_CONTEXT_MINOR_VERSION ; 
 int SDL_GL_CONTEXT_PROFILE_CORE ; 
 int /*<<< orphan*/  SDL_GL_CONTEXT_PROFILE_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_GL_DOUBLEBUFFER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDL_HINT_VIDEO_HIGHDPI_DISABLED ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SDL_WINDOWPOS_CENTERED ; 
 int SDL_WINDOW_ALLOW_HIGHDPI ; 
 int SDL_WINDOW_OPENGL ; 
 int SDL_WINDOW_SHOWN ; 
 int /*<<< orphan*/  WINDOW_HEIGHT ; 
 int /*<<< orphan*/  WINDOW_WIDTH ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  (*) (void*),void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nk_font_atlas**) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct nk_context* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  nk_true ; 
 scalar_t__ running ; 
 int /*<<< orphan*/  win ; 

int FUNC14(int argc, char* argv[])
{
    /* GUI */
    struct nk_context *ctx;
    SDL_GLContext glContext;
    /* SDL setup */
    FUNC7(SDL_HINT_VIDEO_HIGHDPI_DISABLED, "0");
    /*SDL_Init(SDL_INIT_VIDEO|SDL_INIT_TIMER|SDL_INIT_EVENTS); // - do NOT init SDL on GL ES 2 */
    FUNC5 (SDL_GL_CONTEXT_FLAGS, SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG);
    FUNC5 (SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    FUNC5(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    FUNC5(SDL_GL_CONTEXT_MINOR_VERSION, 3);
    FUNC5(SDL_GL_DOUBLEBUFFER, 1);
    win = FUNC1("Demo",
        SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
        WINDOW_WIDTH, WINDOW_HEIGHT, SDL_WINDOW_OPENGL|SDL_WINDOW_SHOWN|SDL_WINDOW_ALLOW_HIGHDPI);
    glContext = FUNC3(win);

    /* OpenGL setup */
    FUNC9(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);

    ctx = FUNC12(win);
    /* Load Fonts: if none of these are loaded a default font will be used  */
    /* Load Cursor: if you uncomment cursor loading please hide the cursor */
    {struct nk_font_atlas *atlas;
    FUNC10(&atlas);
    /*struct nk_font *droid = nk_font_atlas_add_from_file(atlas, "../../../extra_font/DroidSans.ttf", 14, 0);*/
    /*struct nk_font *roboto = nk_font_atlas_add_from_file(atlas, "../../../extra_font/Roboto-Regular.ttf", 16, 0);*/
    /*struct nk_font *future = nk_font_atlas_add_from_file(atlas, "../../../extra_font/kenvector_future_thin.ttf", 13, 0);*/
    /*struct nk_font *clean = nk_font_atlas_add_from_file(atlas, "../../../extra_font/ProggyClean.ttf", 12, 0);*/
    /*struct nk_font *tiny = nk_font_atlas_add_from_file(atlas, "../../../extra_font/ProggyTiny.ttf", 10, 0);*/
    /*struct nk_font *cousine = nk_font_atlas_add_from_file(atlas, "../../../extra_font/Cousine-Regular.ttf", 13, 0);*/
    FUNC11();
    /*nk_style_load_all_cursors(ctx, atlas->cursors);*/
    /*nk_style_set_font(ctx, &roboto->handle)*/;}

    /* style.c */
    /*set_style(ctx, THEME_WHITE);*/
    /*set_style(ctx, THEME_RED);*/
    /*set_style(ctx, THEME_BLUE);*/
    /*set_style(ctx, THEME_DARK);*/

#if defined(__EMSCRIPTEN__)
    #include <emscripten.h>
    emscripten_set_main_loop_arg(MainLoop, (void*)ctx, 0, nk_true);
#else
    while (running) FUNC0((void*)ctx);
#endif

    FUNC13();
    FUNC4(glContext);
    FUNC2(win);
    FUNC6();
    return 0;
}
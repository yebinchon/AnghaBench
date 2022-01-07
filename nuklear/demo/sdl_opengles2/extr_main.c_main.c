
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_font_atlas {int dummy; } ;
struct nk_context {int dummy; } ;
typedef int SDL_GLContext ;


 int MainLoop (void*) ;
 int SDL_CreateWindow (char*,int ,int ,int ,int ,int) ;
 int SDL_DestroyWindow (int ) ;
 int SDL_GL_CONTEXT_FLAGS ;
 int SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG ;
 int SDL_GL_CONTEXT_MAJOR_VERSION ;
 int SDL_GL_CONTEXT_MINOR_VERSION ;
 int SDL_GL_CONTEXT_PROFILE_CORE ;
 int SDL_GL_CONTEXT_PROFILE_MASK ;
 int SDL_GL_CreateContext (int ) ;
 int SDL_GL_DOUBLEBUFFER ;
 int SDL_GL_DeleteContext (int ) ;
 int SDL_GL_SetAttribute (int ,int) ;
 int SDL_HINT_VIDEO_HIGHDPI_DISABLED ;
 int SDL_Quit () ;
 int SDL_SetHint (int ,char*) ;
 int SDL_WINDOWPOS_CENTERED ;
 int SDL_WINDOW_ALLOW_HIGHDPI ;
 int SDL_WINDOW_OPENGL ;
 int SDL_WINDOW_SHOWN ;
 int WINDOW_HEIGHT ;
 int WINDOW_WIDTH ;
 int emscripten_set_main_loop_arg (int (*) (void*),void*,int ,int ) ;
 int glViewport (int ,int ,int ,int ) ;
 int nk_sdl_font_stash_begin (struct nk_font_atlas**) ;
 int nk_sdl_font_stash_end () ;
 struct nk_context* nk_sdl_init (int ) ;
 int nk_sdl_shutdown () ;
 int nk_true ;
 scalar_t__ running ;
 int win ;

int main(int argc, char* argv[])
{

    struct nk_context *ctx;
    SDL_GLContext glContext;

    SDL_SetHint(SDL_HINT_VIDEO_HIGHDPI_DISABLED, "0");

    SDL_GL_SetAttribute (SDL_GL_CONTEXT_FLAGS, SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG);
    SDL_GL_SetAttribute (SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
    win = SDL_CreateWindow("Demo",
        SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
        WINDOW_WIDTH, WINDOW_HEIGHT, SDL_WINDOW_OPENGL|SDL_WINDOW_SHOWN|SDL_WINDOW_ALLOW_HIGHDPI);
    glContext = SDL_GL_CreateContext(win);


    glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);

    ctx = nk_sdl_init(win);


    {struct nk_font_atlas *atlas;
    nk_sdl_font_stash_begin(&atlas);






    nk_sdl_font_stash_end();

                                               ;}
    while (running) MainLoop((void*)ctx);


    nk_sdl_shutdown();
    SDL_GL_DeleteContext(glContext);
    SDL_DestroyWindow(win);
    SDL_Quit();
    return 0;
}

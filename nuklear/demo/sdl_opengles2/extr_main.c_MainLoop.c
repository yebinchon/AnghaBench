
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nk_context {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ SDL_Event ;


 int GL_COLOR_BUFFER_BIT ;
 int MAX_ELEMENT_MEMORY ;
 int MAX_VERTEX_MEMORY ;
 int NK_ANTI_ALIASING_ON ;
 int NK_STATIC ;
 int NK_TEXT_LEFT ;
 int NK_WINDOW_BORDER ;
 int NK_WINDOW_CLOSABLE ;
 int NK_WINDOW_MINIMIZABLE ;
 int NK_WINDOW_MOVABLE ;
 int NK_WINDOW_SCALABLE ;
 int NK_WINDOW_TITLE ;
 int SDL_GL_SwapWindow (int ) ;
 int SDL_GetWindowSize (int ,int*,int*) ;
 scalar_t__ SDL_PollEvent (TYPE_1__*) ;
 scalar_t__ SDL_QUIT ;
 int fprintf (int ,char*) ;
 int glClear (int ) ;
 int glClearColor (float,float,float,float) ;
 int glViewport (int ,int ,int,int) ;
 scalar_t__ nk_begin (struct nk_context*,char*,int ,int) ;
 scalar_t__ nk_button_label (struct nk_context*,char*) ;
 int nk_color_fv (float*,int ) ;
 int nk_end (struct nk_context*) ;
 int nk_false ;
 int nk_input_begin (struct nk_context*) ;
 int nk_input_end (struct nk_context*) ;
 int nk_layout_row_begin (struct nk_context*,int ,int,int) ;
 int nk_layout_row_dynamic (struct nk_context*,int,int) ;
 int nk_layout_row_end (struct nk_context*) ;
 int nk_layout_row_push (struct nk_context*,int) ;
 int nk_layout_row_static (struct nk_context*,int,int,int) ;
 scalar_t__ nk_menu_begin_label (struct nk_context*,char*,int ,int ) ;
 int nk_menu_end (struct nk_context*) ;
 int nk_menu_item_label (struct nk_context*,char*,int ) ;
 int nk_menubar_begin (struct nk_context*) ;
 int nk_menubar_end (struct nk_context*) ;
 scalar_t__ nk_option_label (struct nk_context*,char*,int) ;
 int nk_property_int (struct nk_context*,char*,int ,int*,int,int,int) ;
 int nk_rect (int,int,int,int) ;
 int nk_rgb (int,int,int) ;
 int nk_sdl_handle_event (TYPE_1__*) ;
 int nk_sdl_render (int ,int ,int ) ;
 int nk_vec2 (int,int) ;
 int running ;
 int stdout ;
 int win ;

__attribute__((used)) static void
MainLoop(void* loopArg){
    struct nk_context *ctx = (struct nk_context *)loopArg;


    SDL_Event evt;
    nk_input_begin(ctx);
    while (SDL_PollEvent(&evt)) {
        if (evt.type == SDL_QUIT) running = nk_false;
        nk_sdl_handle_event(&evt);
    }
    nk_input_end(ctx);



    if (nk_begin(ctx, "Demo", nk_rect(50, 50, 200, 200),
        NK_WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_SCALABLE|
        NK_WINDOW_CLOSABLE|NK_WINDOW_MINIMIZABLE|NK_WINDOW_TITLE))
    {
        nk_menubar_begin(ctx);
        nk_layout_row_begin(ctx, NK_STATIC, 25, 2);
        nk_layout_row_push(ctx, 45);
        if (nk_menu_begin_label(ctx, "FILE", NK_TEXT_LEFT, nk_vec2(120, 200))) {
            nk_layout_row_dynamic(ctx, 30, 1);
            nk_menu_item_label(ctx, "OPEN", NK_TEXT_LEFT);
            nk_menu_item_label(ctx, "CLOSE", NK_TEXT_LEFT);
            nk_menu_end(ctx);
        }
        nk_layout_row_push(ctx, 45);
        if (nk_menu_begin_label(ctx, "EDIT", NK_TEXT_LEFT, nk_vec2(120, 200))) {
            nk_layout_row_dynamic(ctx, 30, 1);
            nk_menu_item_label(ctx, "COPY", NK_TEXT_LEFT);
            nk_menu_item_label(ctx, "CUT", NK_TEXT_LEFT);
            nk_menu_item_label(ctx, "PASTE", NK_TEXT_LEFT);
            nk_menu_end(ctx);
        }
        nk_layout_row_end(ctx);
        nk_menubar_end(ctx);

        enum {EASY, HARD};
        static int op = EASY;
        static int property = 20;
        nk_layout_row_static(ctx, 30, 80, 1);
        if (nk_button_label(ctx, "button"))
            fprintf(stdout, "button pressed\n");
        nk_layout_row_dynamic(ctx, 30, 2);
        if (nk_option_label(ctx, "easy", op == EASY)) op = EASY;
        if (nk_option_label(ctx, "hard", op == HARD)) op = HARD;
        nk_layout_row_dynamic(ctx, 25, 1);
        nk_property_int(ctx, "Compression:", 0, &property, 100, 10, 1);
    }
    nk_end(ctx);
    {float bg[4];
    int win_width, win_height;
    nk_color_fv(bg, nk_rgb(28,48,62));
    SDL_GetWindowSize(win, &win_width, &win_height);
    glViewport(0, 0, win_width, win_height);
    glClear(GL_COLOR_BUFFER_BIT);
    glClearColor(bg[0], bg[1], bg[2], bg[3]);





    nk_sdl_render(NK_ANTI_ALIASING_ON, MAX_VERTEX_MEMORY, MAX_ELEMENT_MEMORY);
    SDL_GL_SwapWindow(win);}
}

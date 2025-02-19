
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {scalar_t__ wakeup_event; int * window; scalar_t__ vsync; } ;
typedef scalar_t__ Uint32 ;


 int MP_ERR (struct vo*,char*) ;
 int MP_WARN (struct vo*,char*) ;
 int * SDL_CreateWindow (char*,int ,int ,int,int,int) ;
 int SDL_DestroyWindow (int *) ;
 int SDL_HINT_DEFAULT ;
 int SDL_HINT_OVERRIDE ;
 int SDL_HINT_RENDER_SCALE_QUALITY ;
 int SDL_HINT_RENDER_VSYNC ;
 int SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS ;
 int SDL_INIT_EVENTS ;
 int SDL_INIT_VIDEO ;
 scalar_t__ SDL_InitSubSystem (int ) ;
 scalar_t__ SDL_RegisterEvents (int) ;
 int SDL_SetHintWithPriority (int ,char*,int ) ;
 int SDL_WINDOWPOS_UNDEFINED ;
 int SDL_WINDOW_HIDDEN ;
 int SDL_WINDOW_RESIZABLE ;
 scalar_t__ SDL_WasInit (int ) ;
 scalar_t__ init_renderer (struct vo*) ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct priv *vc = vo->priv;

    if (SDL_WasInit(SDL_INIT_EVENTS)) {
        MP_ERR(vo, "Another component is using SDL already.\n");
        return -1;
    }


    SDL_SetHintWithPriority(SDL_HINT_RENDER_SCALE_QUALITY, "1",
                            SDL_HINT_DEFAULT);
    SDL_SetHintWithPriority(SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS, "0",
                            SDL_HINT_DEFAULT);


    SDL_SetHintWithPriority(SDL_HINT_RENDER_VSYNC, vc->vsync ? "1" : "0",
                            SDL_HINT_OVERRIDE);

    if (SDL_InitSubSystem(SDL_INIT_VIDEO)) {
        MP_ERR(vo, "SDL_Init failed\n");
        return -1;
    }


    vc->window = SDL_CreateWindow("MPV", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
                                  640, 480, SDL_WINDOW_RESIZABLE | SDL_WINDOW_HIDDEN);
    if (!vc->window) {
        MP_ERR(vo, "SDL_CreateWindow failed\n");
        return -1;
    }



    if (init_renderer(vo) != 0) {
        SDL_DestroyWindow(vc->window);
        vc->window = ((void*)0);
        return -1;
    }

    vc->wakeup_event = SDL_RegisterEvents(1);
    if (vc->wakeup_event == (Uint32)-1)
        MP_ERR(vo, "SDL_RegisterEvents() failed.\n");

    MP_WARN(vo, "Warning: this legacy VO has bad performance. Consider fixing "
                "your graphics drivers, or not forcing the sdl VO.\n");

    return 0;
}

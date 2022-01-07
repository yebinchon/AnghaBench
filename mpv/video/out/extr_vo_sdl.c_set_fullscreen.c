
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {TYPE_1__* opts; struct priv* priv; } ;
struct priv {int window; scalar_t__ switch_mode; } ;
typedef int Uint32 ;
struct TYPE_2__ {int fullscreen; } ;
typedef int SDL_bool ;


 int MP_ERR (struct vo*,char*) ;
 int SDL_GetWindowFlags (int ) ;
 int SDL_IsScreenSaverEnabled () ;
 scalar_t__ SDL_SetWindowFullscreen (int ,int) ;
 int SDL_WINDOW_FULLSCREEN ;
 int SDL_WINDOW_FULLSCREEN_DESKTOP ;
 int force_resize (struct vo*) ;
 int set_screensaver (int ) ;

__attribute__((used)) static void set_fullscreen(struct vo *vo)
{
    struct priv *vc = vo->priv;
    int fs = vo->opts->fullscreen;
    SDL_bool prev_screensaver_state = SDL_IsScreenSaverEnabled();

    Uint32 fs_flag;
    if (vc->switch_mode)
        fs_flag = SDL_WINDOW_FULLSCREEN;
    else
        fs_flag = SDL_WINDOW_FULLSCREEN_DESKTOP;

    Uint32 old_flags = SDL_GetWindowFlags(vc->window);
    int prev_fs = !!(old_flags & fs_flag);
    if (fs == prev_fs)
        return;

    Uint32 flags = 0;
    if (fs)
        flags |= fs_flag;

    if (SDL_SetWindowFullscreen(vc->window, flags)) {
        MP_ERR(vo, "SDL_SetWindowFullscreen failed\n");
        return;
    }


    set_screensaver(prev_screensaver_state);

    force_resize(vo);
}

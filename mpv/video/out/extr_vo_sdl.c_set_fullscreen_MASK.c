#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_1__* opts; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  window; scalar_t__ switch_mode; } ;
typedef  int Uint32 ;
struct TYPE_2__ {int fullscreen; } ;
typedef  int /*<<< orphan*/  SDL_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int SDL_WINDOW_FULLSCREEN ; 
 int SDL_WINDOW_FULLSCREEN_DESKTOP ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vo *vo)
{
    struct priv *vc = vo->priv;
    int fs = vo->opts->fullscreen;
    SDL_bool prev_screensaver_state = FUNC2();

    Uint32 fs_flag;
    if (vc->switch_mode)
        fs_flag = SDL_WINDOW_FULLSCREEN;
    else
        fs_flag = SDL_WINDOW_FULLSCREEN_DESKTOP;

    Uint32 old_flags = FUNC1(vc->window);
    int prev_fs = !!(old_flags & fs_flag);
    if (fs == prev_fs)
        return;

    Uint32 flags = 0;
    if (fs)
        flags |= fs_flag;

    if (FUNC3(vc->window, flags)) {
        FUNC0(vo, "SDL_SetWindowFullscreen failed\n");
        return;
    }

    // toggling fullscreen might recreate the window, so better guard for this
    FUNC5(prev_screensaver_state);

    FUNC4(vo);
}
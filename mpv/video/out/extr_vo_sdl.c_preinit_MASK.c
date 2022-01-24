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
struct vo {struct priv* priv; } ;
struct priv {scalar_t__ wakeup_event; int /*<<< orphan*/ * window; scalar_t__ vsync; } ;
typedef  scalar_t__ Uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDL_HINT_DEFAULT ; 
 int /*<<< orphan*/  SDL_HINT_OVERRIDE ; 
 int /*<<< orphan*/  SDL_HINT_RENDER_SCALE_QUALITY ; 
 int /*<<< orphan*/  SDL_HINT_RENDER_VSYNC ; 
 int /*<<< orphan*/  SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS ; 
 int /*<<< orphan*/  SDL_INIT_EVENTS ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_WINDOWPOS_UNDEFINED ; 
 int SDL_WINDOW_HIDDEN ; 
 int SDL_WINDOW_RESIZABLE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vo*) ; 

__attribute__((used)) static int FUNC9(struct vo *vo)
{
    struct priv *vc = vo->priv;

    if (FUNC7(SDL_INIT_EVENTS)) {
        FUNC0(vo, "Another component is using SDL already.\n");
        return -1;
    }

    // predefine SDL defaults (SDL env vars shall override)
    FUNC6(SDL_HINT_RENDER_SCALE_QUALITY, "1",
                            SDL_HINT_DEFAULT);
    FUNC6(SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS, "0",
                            SDL_HINT_DEFAULT);

    // predefine MPV options (SDL env vars shall be overridden)
    FUNC6(SDL_HINT_RENDER_VSYNC, vc->vsync ? "1" : "0",
                            SDL_HINT_OVERRIDE);

    if (FUNC4(SDL_INIT_VIDEO)) {
        FUNC0(vo, "SDL_Init failed\n");
        return -1;
    }

    // then actually try
    vc->window = FUNC2("MPV", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
                                  640, 480, SDL_WINDOW_RESIZABLE | SDL_WINDOW_HIDDEN);
    if (!vc->window) {
        FUNC0(vo, "SDL_CreateWindow failed\n");
        return -1;
    }

    // try creating a renderer (this also gets the renderer_info data
    // for query_format to use!)
    if (FUNC8(vo) != 0) {
        FUNC3(vc->window);
        vc->window = NULL;
        return -1;
    }

    vc->wakeup_event = FUNC5(1);
    if (vc->wakeup_event == (Uint32)-1)
        FUNC0(vo, "SDL_RegisterEvents() failed.\n");

    FUNC1(vo, "Warning: this legacy VO has bad performance. Consider fixing "
                "your graphics drivers, or not forcing the sdl VO.\n");

    return 0;
}
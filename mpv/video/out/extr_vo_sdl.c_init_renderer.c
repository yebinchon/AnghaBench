
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {scalar_t__ renderer_index; } ;


 int MP_ERR (struct vo*,char*) ;
 int * SDL_GetHint (int ) ;
 int SDL_GetNumRenderDrivers () ;
 int SDL_HINT_RENDER_DRIVER ;
 scalar_t__ try_create_renderer (struct vo*,int,int *) ;

__attribute__((used)) static int init_renderer(struct vo *vo)
{
    struct priv *vc = vo->priv;

    int n = SDL_GetNumRenderDrivers();
    int i;

    if (vc->renderer_index >= 0)
        if (try_create_renderer(vo, vc->renderer_index, ((void*)0)))
            return 0;

    for (i = 0; i < n; ++i)
        if (try_create_renderer(vo, i, SDL_GetHint(SDL_HINT_RENDER_DRIVER)))
            return 0;

    for (i = 0; i < n; ++i)
        if (try_create_renderer(vo, i, ((void*)0)))
            return 0;

    MP_ERR(vo, "No supported renderer\n");
    return -1;
}

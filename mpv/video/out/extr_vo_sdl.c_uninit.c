
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int * window; } ;


 int SDL_DestroyWindow (int *) ;
 int SDL_INIT_VIDEO ;
 int SDL_QuitSubSystem (int ) ;
 int destroy_renderer (struct vo*) ;
 int talloc_free (struct priv*) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct priv *vc = vo->priv;
    destroy_renderer(vo);
    SDL_DestroyWindow(vc->window);
    vc->window = ((void*)0);
    SDL_QuitSubSystem(SDL_INIT_VIDEO);
    talloc_free(vc);
}

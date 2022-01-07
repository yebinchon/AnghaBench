
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dwidth; int dheight; struct priv* priv; } ;
struct priv {int window; } ;


 int SDL_GetWindowSize (int ,int*,int*) ;
 int resize (struct vo*,int,int) ;

__attribute__((used)) static void check_resize(struct vo *vo)
{
    struct priv *vc = vo->priv;
    int w, h;
    SDL_GetWindowSize(vc->window, &w, &h);
    if (vo->dwidth != w || vo->dheight != h)
        resize(vo, w, h);
}

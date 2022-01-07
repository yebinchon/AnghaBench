
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ paused; } ;
struct ao {struct priv* priv; } ;


 int SDL_FALSE ;
 int SDL_PauseAudio (int ) ;

__attribute__((used)) static void resume(struct ao *ao)
{
    struct priv *priv = ao->priv;
    if (priv->paused)
        SDL_PauseAudio(SDL_FALSE);
    priv->paused = 0;
}

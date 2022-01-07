
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int paused; } ;
struct ao {struct priv* priv; } ;


 int SDL_PauseAudio (int ) ;
 int SDL_TRUE ;

__attribute__((used)) static void reset(struct ao *ao)
{
    struct priv *priv = ao->priv;
    if (!priv->paused)
        SDL_PauseAudio(SDL_TRUE);
    priv->paused = 1;
}

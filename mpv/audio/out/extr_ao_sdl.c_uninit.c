
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int dummy; } ;
struct ao {struct priv* priv; } ;


 int SDL_INIT_AUDIO ;
 int SDL_LockAudio () ;
 int SDL_QuitSubSystem (int ) ;
 scalar_t__ SDL_WasInit (int ) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *priv = ao->priv;
    if (!priv)
        return;

    if (SDL_WasInit(SDL_INIT_AUDIO)) {

        SDL_LockAudio();


        SDL_QuitSubSystem(SDL_INIT_AUDIO);
    }
}

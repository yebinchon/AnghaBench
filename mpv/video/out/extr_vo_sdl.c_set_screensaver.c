
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_DisableScreenSaver () ;
 int SDL_EnableScreenSaver () ;
 int SDL_IsScreenSaverEnabled () ;

__attribute__((used)) static inline void set_screensaver(bool enabled)
{
    if (!!enabled == !!SDL_IsScreenSaverEnabled())
        return;

    if (enabled)
        SDL_EnableScreenSaver();
    else
        SDL_DisableScreenSaver();
}

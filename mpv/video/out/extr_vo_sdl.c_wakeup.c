
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct priv {int wakeup_event; } ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ SDL_Event ;


 int SDL_PushEvent (TYPE_1__*) ;

__attribute__((used)) static void wakeup(struct vo *vo)
{
    struct priv *vc = vo->priv;
    SDL_Event event = {.type = vc->wakeup_event};

    SDL_PushEvent(&event);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_input_src {struct gamepad_priv* priv; } ;
struct gamepad_priv {int * controller; } ;
typedef int SDL_GameController ;


 int MP_INFO (struct mp_input_src*,char*,char const*) ;
 int MP_WARN (struct mp_input_src*,char*) ;
 char* SDL_GameControllerName (int *) ;
 int * SDL_GameControllerOpen (int) ;
 scalar_t__ SDL_IsGameController (int) ;

__attribute__((used)) static void add_gamepad(struct mp_input_src *src, int id)
{
    struct gamepad_priv *p = src->priv;

    if (p->controller) {
        MP_WARN(src, "can't add more than one controller\n");
        return;
    }

    if (SDL_IsGameController(id)) {
        SDL_GameController *controller = SDL_GameControllerOpen(id);

        if (controller) {
            const char *name = SDL_GameControllerName(controller);
            MP_INFO(src, "added controller: %s\n", name);
            p->controller = controller;
            return;
        }
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_input_src {struct gamepad_priv* priv; } ;
struct gamepad_priv {int * controller; } ;
typedef int SDL_JoystickID ;
typedef int SDL_Joystick ;
typedef int SDL_GameController ;


 int MP_INFO (struct mp_input_src*,char*,char const*) ;
 int SDL_GameControllerClose (int *) ;
 int * SDL_GameControllerGetJoystick (int *) ;
 char* SDL_GameControllerName (int *) ;
 int SDL_JoystickInstanceID (int *) ;

__attribute__((used)) static void remove_gamepad(struct mp_input_src *src, int id)
{
    struct gamepad_priv *p = src->priv;
    SDL_GameController *controller = p->controller;
    SDL_Joystick* j = SDL_GameControllerGetJoystick(controller);
    SDL_JoystickID jid = SDL_JoystickInstanceID(j);

    if (controller && jid == id) {
        const char *name = SDL_GameControllerName(controller);
        MP_INFO(src, "removed controller: %s\n", name);
        SDL_GameControllerClose(controller);
        p->controller = ((void*)0);
    }
}

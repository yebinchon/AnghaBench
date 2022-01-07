
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_RegisterEvents (int) ;
 int gamepad_cancel_wakeup ;

__attribute__((used)) static void initialize_events(void)
{
    gamepad_cancel_wakeup = SDL_RegisterEvents(1);
}

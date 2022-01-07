
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_input_src {int dummy; } ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ SDL_Event ;


 int MP_VERBOSE (struct mp_input_src*,char*) ;
 int SDL_PushEvent (TYPE_1__*) ;
 int gamepad_cancel_wakeup ;

__attribute__((used)) static void request_cancel(struct mp_input_src *src)
{
    MP_VERBOSE(src, "exiting...\n");
    SDL_Event event = { .type = gamepad_cancel_wakeup };
    SDL_PushEvent(&event);
}

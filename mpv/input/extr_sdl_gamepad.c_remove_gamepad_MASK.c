#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mp_input_src {struct gamepad_priv* priv; } ;
struct gamepad_priv {int /*<<< orphan*/ * controller; } ;
typedef  int SDL_JoystickID ;
typedef  int /*<<< orphan*/  SDL_Joystick ;
typedef  int /*<<< orphan*/  SDL_GameController ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_input_src*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mp_input_src *src, int id)
{
    struct gamepad_priv *p = src->priv;
    SDL_GameController *controller = p->controller;
    SDL_Joystick* j = FUNC2(controller);
    SDL_JoystickID jid = FUNC4(j);

    if (controller && jid == id) {
        const char *name = FUNC3(controller);
        FUNC0(src, "removed controller: %s\n", name);
        FUNC1(controller);
        p->controller = NULL;
    }
}
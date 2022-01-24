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
typedef  int /*<<< orphan*/  SDL_GameController ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_input_src*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_input_src*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct mp_input_src *src, int id)
{
    struct gamepad_priv *p = src->priv;

    if (p->controller) {
        FUNC1(src, "can't add more than one controller\n");
        return;
    }

    if (FUNC4(id)) {
        SDL_GameController *controller = FUNC3(id);

        if (controller) {
            const char *name = FUNC2(controller);
            FUNC0(src, "added controller: %s\n", name);
            p->controller = controller;
            return;
        }
    }
}
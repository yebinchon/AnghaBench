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
struct nk_context {int dummy; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_KEY_BACKSPACE ; 
 int /*<<< orphan*/  GLFW_KEY_C ; 
 int /*<<< orphan*/  GLFW_KEY_DELETE ; 
 int /*<<< orphan*/  GLFW_KEY_DOWN ; 
 int /*<<< orphan*/  GLFW_KEY_E ; 
 int /*<<< orphan*/  GLFW_KEY_ENTER ; 
 int /*<<< orphan*/  GLFW_KEY_LEFT ; 
 int /*<<< orphan*/  GLFW_KEY_LEFT_CONTROL ; 
 int /*<<< orphan*/  GLFW_KEY_P ; 
 int /*<<< orphan*/  GLFW_KEY_RIGHT ; 
 int /*<<< orphan*/  GLFW_KEY_RIGHT_CONTROL ; 
 int /*<<< orphan*/  GLFW_KEY_TAB ; 
 int /*<<< orphan*/  GLFW_KEY_UP ; 
 int /*<<< orphan*/  GLFW_KEY_X ; 
 int /*<<< orphan*/  GLFW_MOUSE_BUTTON_LEFT ; 
 int /*<<< orphan*/  GLFW_MOUSE_BUTTON_MIDDLE ; 
 int /*<<< orphan*/  GLFW_MOUSE_BUTTON_RIGHT ; 
 scalar_t__ GLFW_PRESS ; 
 int /*<<< orphan*/  NK_BUTTON_LEFT ; 
 int /*<<< orphan*/  NK_BUTTON_MIDDLE ; 
 int /*<<< orphan*/  NK_BUTTON_RIGHT ; 
 int /*<<< orphan*/  NK_KEY_BACKSPACE ; 
 int /*<<< orphan*/  NK_KEY_COPY ; 
 int /*<<< orphan*/  NK_KEY_CUT ; 
 int /*<<< orphan*/  NK_KEY_DEL ; 
 int /*<<< orphan*/  NK_KEY_DOWN ; 
 int /*<<< orphan*/  NK_KEY_ENTER ; 
 int /*<<< orphan*/  NK_KEY_LEFT ; 
 int /*<<< orphan*/  NK_KEY_PASTE ; 
 int /*<<< orphan*/  NK_KEY_RIGHT ; 
 int /*<<< orphan*/  NK_KEY_SHIFT ; 
 int /*<<< orphan*/  NK_KEY_TAB ; 
 int /*<<< orphan*/  NK_KEY_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double*,double*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct nk_context*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct nk_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nk_context*,int,int) ; 

__attribute__((used)) static void
FUNC9(struct nk_context *ctx, GLFWwindow *win)
{
    double x, y;
    FUNC4(ctx);
    FUNC3();

    FUNC7(ctx, NK_KEY_DEL, FUNC1(win, GLFW_KEY_DELETE) == GLFW_PRESS);
    FUNC7(ctx, NK_KEY_ENTER, FUNC1(win, GLFW_KEY_ENTER) == GLFW_PRESS);
    FUNC7(ctx, NK_KEY_TAB, FUNC1(win, GLFW_KEY_TAB) == GLFW_PRESS);
    FUNC7(ctx, NK_KEY_BACKSPACE, FUNC1(win, GLFW_KEY_BACKSPACE) == GLFW_PRESS);
    FUNC7(ctx, NK_KEY_LEFT, FUNC1(win, GLFW_KEY_LEFT) == GLFW_PRESS);
    FUNC7(ctx, NK_KEY_RIGHT, FUNC1(win, GLFW_KEY_RIGHT) == GLFW_PRESS);
    FUNC7(ctx, NK_KEY_UP, FUNC1(win, GLFW_KEY_UP) == GLFW_PRESS);
    FUNC7(ctx, NK_KEY_DOWN, FUNC1(win, GLFW_KEY_DOWN) == GLFW_PRESS);

    if (FUNC1(win, GLFW_KEY_LEFT_CONTROL) == GLFW_PRESS ||
        FUNC1(win, GLFW_KEY_RIGHT_CONTROL) == GLFW_PRESS) {
        FUNC7(ctx, NK_KEY_COPY, FUNC1(win, GLFW_KEY_C) == GLFW_PRESS);
        FUNC7(ctx, NK_KEY_PASTE, FUNC1(win, GLFW_KEY_P) == GLFW_PRESS);
        FUNC7(ctx, NK_KEY_CUT, FUNC1(win, GLFW_KEY_X) == GLFW_PRESS);
        FUNC7(ctx, NK_KEY_CUT, FUNC1(win, GLFW_KEY_E) == GLFW_PRESS);
        FUNC7(ctx, NK_KEY_SHIFT, 1);
    } else {
        FUNC7(ctx, NK_KEY_COPY, 0);
        FUNC7(ctx, NK_KEY_PASTE, 0);
        FUNC7(ctx, NK_KEY_CUT, 0);
        FUNC7(ctx, NK_KEY_SHIFT, 0);
    }

    FUNC0(win, &x, &y);
    FUNC8(ctx, (int)x, (int)y);
    FUNC5(ctx, NK_BUTTON_LEFT, (int)x, (int)y, FUNC2(win, GLFW_MOUSE_BUTTON_LEFT) == GLFW_PRESS);
    FUNC5(ctx, NK_BUTTON_MIDDLE, (int)x, (int)y, FUNC2(win, GLFW_MOUSE_BUTTON_MIDDLE) == GLFW_PRESS);
    FUNC5(ctx, NK_BUTTON_RIGHT, (int)x, (int)y, FUNC2(win, GLFW_MOUSE_BUTTON_RIGHT) == GLFW_PRESS);
    FUNC6(ctx);
}
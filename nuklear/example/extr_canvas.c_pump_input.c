
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_context {int dummy; } ;
typedef int GLFWwindow ;


 int GLFW_KEY_BACKSPACE ;
 int GLFW_KEY_C ;
 int GLFW_KEY_DELETE ;
 int GLFW_KEY_DOWN ;
 int GLFW_KEY_E ;
 int GLFW_KEY_ENTER ;
 int GLFW_KEY_LEFT ;
 int GLFW_KEY_LEFT_CONTROL ;
 int GLFW_KEY_P ;
 int GLFW_KEY_RIGHT ;
 int GLFW_KEY_RIGHT_CONTROL ;
 int GLFW_KEY_TAB ;
 int GLFW_KEY_UP ;
 int GLFW_KEY_X ;
 int GLFW_MOUSE_BUTTON_LEFT ;
 int GLFW_MOUSE_BUTTON_MIDDLE ;
 int GLFW_MOUSE_BUTTON_RIGHT ;
 scalar_t__ GLFW_PRESS ;
 int NK_BUTTON_LEFT ;
 int NK_BUTTON_MIDDLE ;
 int NK_BUTTON_RIGHT ;
 int NK_KEY_BACKSPACE ;
 int NK_KEY_COPY ;
 int NK_KEY_CUT ;
 int NK_KEY_DEL ;
 int NK_KEY_DOWN ;
 int NK_KEY_ENTER ;
 int NK_KEY_LEFT ;
 int NK_KEY_PASTE ;
 int NK_KEY_RIGHT ;
 int NK_KEY_SHIFT ;
 int NK_KEY_TAB ;
 int NK_KEY_UP ;
 int glfwGetCursorPos (int *,double*,double*) ;
 scalar_t__ glfwGetKey (int *,int ) ;
 scalar_t__ glfwGetMouseButton (int *,int ) ;
 int glfwPollEvents () ;
 int nk_input_begin (struct nk_context*) ;
 int nk_input_button (struct nk_context*,int ,int,int,int) ;
 int nk_input_end (struct nk_context*) ;
 int nk_input_key (struct nk_context*,int ,int) ;
 int nk_input_motion (struct nk_context*,int,int) ;

__attribute__((used)) static void
pump_input(struct nk_context *ctx, GLFWwindow *win)
{
    double x, y;
    nk_input_begin(ctx);
    glfwPollEvents();

    nk_input_key(ctx, NK_KEY_DEL, glfwGetKey(win, GLFW_KEY_DELETE) == GLFW_PRESS);
    nk_input_key(ctx, NK_KEY_ENTER, glfwGetKey(win, GLFW_KEY_ENTER) == GLFW_PRESS);
    nk_input_key(ctx, NK_KEY_TAB, glfwGetKey(win, GLFW_KEY_TAB) == GLFW_PRESS);
    nk_input_key(ctx, NK_KEY_BACKSPACE, glfwGetKey(win, GLFW_KEY_BACKSPACE) == GLFW_PRESS);
    nk_input_key(ctx, NK_KEY_LEFT, glfwGetKey(win, GLFW_KEY_LEFT) == GLFW_PRESS);
    nk_input_key(ctx, NK_KEY_RIGHT, glfwGetKey(win, GLFW_KEY_RIGHT) == GLFW_PRESS);
    nk_input_key(ctx, NK_KEY_UP, glfwGetKey(win, GLFW_KEY_UP) == GLFW_PRESS);
    nk_input_key(ctx, NK_KEY_DOWN, glfwGetKey(win, GLFW_KEY_DOWN) == GLFW_PRESS);

    if (glfwGetKey(win, GLFW_KEY_LEFT_CONTROL) == GLFW_PRESS ||
        glfwGetKey(win, GLFW_KEY_RIGHT_CONTROL) == GLFW_PRESS) {
        nk_input_key(ctx, NK_KEY_COPY, glfwGetKey(win, GLFW_KEY_C) == GLFW_PRESS);
        nk_input_key(ctx, NK_KEY_PASTE, glfwGetKey(win, GLFW_KEY_P) == GLFW_PRESS);
        nk_input_key(ctx, NK_KEY_CUT, glfwGetKey(win, GLFW_KEY_X) == GLFW_PRESS);
        nk_input_key(ctx, NK_KEY_CUT, glfwGetKey(win, GLFW_KEY_E) == GLFW_PRESS);
        nk_input_key(ctx, NK_KEY_SHIFT, 1);
    } else {
        nk_input_key(ctx, NK_KEY_COPY, 0);
        nk_input_key(ctx, NK_KEY_PASTE, 0);
        nk_input_key(ctx, NK_KEY_CUT, 0);
        nk_input_key(ctx, NK_KEY_SHIFT, 0);
    }

    glfwGetCursorPos(win, &x, &y);
    nk_input_motion(ctx, (int)x, (int)y);
    nk_input_button(ctx, NK_BUTTON_LEFT, (int)x, (int)y, glfwGetMouseButton(win, GLFW_MOUSE_BUTTON_LEFT) == GLFW_PRESS);
    nk_input_button(ctx, NK_BUTTON_MIDDLE, (int)x, (int)y, glfwGetMouseButton(win, GLFW_MOUSE_BUTTON_MIDDLE) == GLFW_PRESS);
    nk_input_button(ctx, NK_BUTTON_RIGHT, (int)x, (int)y, glfwGetMouseButton(win, GLFW_MOUSE_BUTTON_RIGHT) == GLFW_PRESS);
    nk_input_end(ctx);
}

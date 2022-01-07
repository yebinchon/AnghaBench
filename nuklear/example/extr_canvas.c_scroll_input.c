
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_context {int dummy; } ;
typedef int GLFWwindow ;


 int UNUSED (double) ;
 scalar_t__ glfwGetWindowUserPointer (int *) ;
 int nk_input_scroll (struct nk_context*,int ) ;
 int nk_vec2 (int ,float) ;

__attribute__((used)) static void scroll_input(GLFWwindow *win, double _, double yoff)
{UNUSED(_);nk_input_scroll((struct nk_context*)glfwGetWindowUserPointer(win), nk_vec2(0, (float)yoff));}

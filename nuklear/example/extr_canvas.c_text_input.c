
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_context {int dummy; } ;
typedef int GLFWwindow ;


 scalar_t__ glfwGetWindowUserPointer (int *) ;
 int nk_input_unicode (struct nk_context*,unsigned int) ;

__attribute__((used)) static void text_input(GLFWwindow *win, unsigned int codepoint)
{nk_input_unicode((struct nk_context*)glfwGetWindowUserPointer(win), codepoint);}

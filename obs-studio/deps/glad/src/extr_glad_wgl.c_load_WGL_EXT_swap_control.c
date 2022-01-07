
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLSWAPINTERVALEXTPROC ;
typedef scalar_t__ PFNWGLGETSWAPINTERVALEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_EXT_swap_control ;
 scalar_t__ glad_wglGetSwapIntervalEXT ;
 scalar_t__ glad_wglSwapIntervalEXT ;

__attribute__((used)) static void load_WGL_EXT_swap_control(GLADloadproc load) {
 if(!GLAD_WGL_EXT_swap_control) return;
 glad_wglSwapIntervalEXT = (PFNWGLSWAPINTERVALEXTPROC)load("wglSwapIntervalEXT");
 glad_wglGetSwapIntervalEXT = (PFNWGLGETSWAPINTERVALEXTPROC)load("wglGetSwapIntervalEXT");
}

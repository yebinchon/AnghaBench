
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLMAKECONTEXTCURRENTARBPROC ;
typedef scalar_t__ PFNWGLGETCURRENTREADDCARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_ARB_make_current_read ;
 scalar_t__ glad_wglGetCurrentReadDCARB ;
 scalar_t__ glad_wglMakeContextCurrentARB ;

__attribute__((used)) static void load_WGL_ARB_make_current_read(GLADloadproc load) {
 if(!GLAD_WGL_ARB_make_current_read) return;
 glad_wglMakeContextCurrentARB = (PFNWGLMAKECONTEXTCURRENTARBPROC)load("wglMakeContextCurrentARB");
 glad_wglGetCurrentReadDCARB = (PFNWGLGETCURRENTREADDCARBPROC)load("wglGetCurrentReadDCARB");
}

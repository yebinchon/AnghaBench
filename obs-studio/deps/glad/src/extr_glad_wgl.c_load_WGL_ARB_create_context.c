
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLCREATECONTEXTATTRIBSARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_ARB_create_context ;
 scalar_t__ glad_wglCreateContextAttribsARB ;

__attribute__((used)) static void load_WGL_ARB_create_context(GLADloadproc load) {
 if(!GLAD_WGL_ARB_create_context) return;
 glad_wglCreateContextAttribsARB = (PFNWGLCREATECONTEXTATTRIBSARBPROC)load("wglCreateContextAttribsARB");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLMAKECONTEXTCURRENTEXTPROC ;
typedef scalar_t__ PFNWGLGETCURRENTREADDCEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_EXT_make_current_read ;
 scalar_t__ glad_wglGetCurrentReadDCEXT ;
 scalar_t__ glad_wglMakeContextCurrentEXT ;

__attribute__((used)) static void load_WGL_EXT_make_current_read(GLADloadproc load) {
 if(!GLAD_WGL_EXT_make_current_read) return;
 glad_wglMakeContextCurrentEXT = (PFNWGLMAKECONTEXTCURRENTEXTPROC)load("wglMakeContextCurrentEXT");
 glad_wglGetCurrentReadDCEXT = (PFNWGLGETCURRENTREADDCEXTPROC)load("wglGetCurrentReadDCEXT");
}

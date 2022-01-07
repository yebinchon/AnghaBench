
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXSELECTEVENTSGIXPROC ;
typedef scalar_t__ PFNGLXQUERYGLXPBUFFERSGIXPROC ;
typedef scalar_t__ PFNGLXGETSELECTEDEVENTSGIXPROC ;
typedef scalar_t__ PFNGLXDESTROYGLXPBUFFERSGIXPROC ;
typedef scalar_t__ PFNGLXCREATEGLXPBUFFERSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGIX_pbuffer ;
 scalar_t__ glad_glXCreateGLXPbufferSGIX ;
 scalar_t__ glad_glXDestroyGLXPbufferSGIX ;
 scalar_t__ glad_glXGetSelectedEventSGIX ;
 scalar_t__ glad_glXQueryGLXPbufferSGIX ;
 scalar_t__ glad_glXSelectEventSGIX ;

__attribute__((used)) static void load_GLX_SGIX_pbuffer(GLADloadproc load) {
 if(!GLAD_GLX_SGIX_pbuffer) return;
 glad_glXCreateGLXPbufferSGIX = (PFNGLXCREATEGLXPBUFFERSGIXPROC)load("glXCreateGLXPbufferSGIX");
 glad_glXDestroyGLXPbufferSGIX = (PFNGLXDESTROYGLXPBUFFERSGIXPROC)load("glXDestroyGLXPbufferSGIX");
 glad_glXQueryGLXPbufferSGIX = (PFNGLXQUERYGLXPBUFFERSGIXPROC)load("glXQueryGLXPbufferSGIX");
 glad_glXSelectEventSGIX = (PFNGLXSELECTEVENTSGIXPROC)load("glXSelectEventSGIX");
 glad_glXGetSelectedEventSGIX = (PFNGLXGETSELECTEDEVENTSGIXPROC)load("glXGetSelectedEventSGIX");
}

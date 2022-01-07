
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLRELEASEPBUFFERDCARBPROC ;
typedef scalar_t__ PFNWGLQUERYPBUFFERARBPROC ;
typedef scalar_t__ PFNWGLGETPBUFFERDCARBPROC ;
typedef scalar_t__ PFNWGLDESTROYPBUFFERARBPROC ;
typedef scalar_t__ PFNWGLCREATEPBUFFERARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_ARB_pbuffer ;
 scalar_t__ glad_wglCreatePbufferARB ;
 scalar_t__ glad_wglDestroyPbufferARB ;
 scalar_t__ glad_wglGetPbufferDCARB ;
 scalar_t__ glad_wglQueryPbufferARB ;
 scalar_t__ glad_wglReleasePbufferDCARB ;

__attribute__((used)) static void load_WGL_ARB_pbuffer(GLADloadproc load) {
 if(!GLAD_WGL_ARB_pbuffer) return;
 glad_wglCreatePbufferARB = (PFNWGLCREATEPBUFFERARBPROC)load("wglCreatePbufferARB");
 glad_wglGetPbufferDCARB = (PFNWGLGETPBUFFERDCARBPROC)load("wglGetPbufferDCARB");
 glad_wglReleasePbufferDCARB = (PFNWGLRELEASEPBUFFERDCARBPROC)load("wglReleasePbufferDCARB");
 glad_wglDestroyPbufferARB = (PFNWGLDESTROYPBUFFERARBPROC)load("wglDestroyPbufferARB");
 glad_wglQueryPbufferARB = (PFNWGLQUERYPBUFFERARBPROC)load("wglQueryPbufferARB");
}

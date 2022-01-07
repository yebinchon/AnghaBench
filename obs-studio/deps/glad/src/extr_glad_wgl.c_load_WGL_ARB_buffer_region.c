
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLSAVEBUFFERREGIONARBPROC ;
typedef scalar_t__ PFNWGLRESTOREBUFFERREGIONARBPROC ;
typedef scalar_t__ PFNWGLDELETEBUFFERREGIONARBPROC ;
typedef scalar_t__ PFNWGLCREATEBUFFERREGIONARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_ARB_buffer_region ;
 scalar_t__ glad_wglCreateBufferRegionARB ;
 scalar_t__ glad_wglDeleteBufferRegionARB ;
 scalar_t__ glad_wglRestoreBufferRegionARB ;
 scalar_t__ glad_wglSaveBufferRegionARB ;

__attribute__((used)) static void load_WGL_ARB_buffer_region(GLADloadproc load) {
 if(!GLAD_WGL_ARB_buffer_region) return;
 glad_wglCreateBufferRegionARB = (PFNWGLCREATEBUFFERREGIONARBPROC)load("wglCreateBufferRegionARB");
 glad_wglDeleteBufferRegionARB = (PFNWGLDELETEBUFFERREGIONARBPROC)load("wglDeleteBufferRegionARB");
 glad_wglSaveBufferRegionARB = (PFNWGLSAVEBUFFERREGIONARBPROC)load("wglSaveBufferRegionARB");
 glad_wglRestoreBufferRegionARB = (PFNWGLRESTOREBUFFERREGIONARBPROC)load("wglRestoreBufferRegionARB");
}

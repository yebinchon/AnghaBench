
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLGETPIXELFORMATATTRIBIVARBPROC ;
typedef scalar_t__ PFNWGLGETPIXELFORMATATTRIBFVARBPROC ;
typedef scalar_t__ PFNWGLCHOOSEPIXELFORMATARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_ARB_pixel_format ;
 scalar_t__ glad_wglChoosePixelFormatARB ;
 scalar_t__ glad_wglGetPixelFormatAttribfvARB ;
 scalar_t__ glad_wglGetPixelFormatAttribivARB ;

__attribute__((used)) static void load_WGL_ARB_pixel_format(GLADloadproc load) {
 if(!GLAD_WGL_ARB_pixel_format) return;
 glad_wglGetPixelFormatAttribivARB = (PFNWGLGETPIXELFORMATATTRIBIVARBPROC)load("wglGetPixelFormatAttribivARB");
 glad_wglGetPixelFormatAttribfvARB = (PFNWGLGETPIXELFORMATATTRIBFVARBPROC)load("wglGetPixelFormatAttribfvARB");
 glad_wglChoosePixelFormatARB = (PFNWGLCHOOSEPIXELFORMATARBPROC)load("wglChoosePixelFormatARB");
}

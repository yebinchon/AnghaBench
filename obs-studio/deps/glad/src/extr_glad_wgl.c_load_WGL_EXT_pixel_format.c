
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLGETPIXELFORMATATTRIBIVEXTPROC ;
typedef scalar_t__ PFNWGLGETPIXELFORMATATTRIBFVEXTPROC ;
typedef scalar_t__ PFNWGLCHOOSEPIXELFORMATEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_EXT_pixel_format ;
 scalar_t__ glad_wglChoosePixelFormatEXT ;
 scalar_t__ glad_wglGetPixelFormatAttribfvEXT ;
 scalar_t__ glad_wglGetPixelFormatAttribivEXT ;

__attribute__((used)) static void load_WGL_EXT_pixel_format(GLADloadproc load) {
 if(!GLAD_WGL_EXT_pixel_format) return;
 glad_wglGetPixelFormatAttribivEXT = (PFNWGLGETPIXELFORMATATTRIBIVEXTPROC)load("wglGetPixelFormatAttribivEXT");
 glad_wglGetPixelFormatAttribfvEXT = (PFNWGLGETPIXELFORMATATTRIBFVEXTPROC)load("wglGetPixelFormatAttribfvEXT");
 glad_wglChoosePixelFormatEXT = (PFNWGLCHOOSEPIXELFORMATEXTPROC)load("wglChoosePixelFormatEXT");
}

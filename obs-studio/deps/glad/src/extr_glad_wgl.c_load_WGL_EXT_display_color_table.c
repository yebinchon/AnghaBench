
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLLOADDISPLAYCOLORTABLEEXTPROC ;
typedef scalar_t__ PFNWGLDESTROYDISPLAYCOLORTABLEEXTPROC ;
typedef scalar_t__ PFNWGLCREATEDISPLAYCOLORTABLEEXTPROC ;
typedef scalar_t__ PFNWGLBINDDISPLAYCOLORTABLEEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_EXT_display_color_table ;
 scalar_t__ glad_wglBindDisplayColorTableEXT ;
 scalar_t__ glad_wglCreateDisplayColorTableEXT ;
 scalar_t__ glad_wglDestroyDisplayColorTableEXT ;
 scalar_t__ glad_wglLoadDisplayColorTableEXT ;

__attribute__((used)) static void load_WGL_EXT_display_color_table(GLADloadproc load) {
 if(!GLAD_WGL_EXT_display_color_table) return;
 glad_wglCreateDisplayColorTableEXT = (PFNWGLCREATEDISPLAYCOLORTABLEEXTPROC)load("wglCreateDisplayColorTableEXT");
 glad_wglLoadDisplayColorTableEXT = (PFNWGLLOADDISPLAYCOLORTABLEEXTPROC)load("wglLoadDisplayColorTableEXT");
 glad_wglBindDisplayColorTableEXT = (PFNWGLBINDDISPLAYCOLORTABLEEXTPROC)load("wglBindDisplayColorTableEXT");
 glad_wglDestroyDisplayColorTableEXT = (PFNWGLDESTROYDISPLAYCOLORTABLEEXTPROC)load("wglDestroyDisplayColorTableEXT");
}

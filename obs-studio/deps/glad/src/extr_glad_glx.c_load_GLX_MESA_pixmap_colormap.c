
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXCREATEGLXPIXMAPMESAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_MESA_pixmap_colormap ;
 scalar_t__ glad_glXCreateGLXPixmapMESA ;

__attribute__((used)) static void load_GLX_MESA_pixmap_colormap(GLADloadproc load) {
 if(!GLAD_GLX_MESA_pixmap_colormap) return;
 glad_glXCreateGLXPixmapMESA = (PFNGLXCREATEGLXPIXMAPMESAPROC)load("glXCreateGLXPixmapMESA");
}

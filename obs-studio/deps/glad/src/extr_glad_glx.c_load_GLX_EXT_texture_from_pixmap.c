
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXRELEASETEXIMAGEEXTPROC ;
typedef scalar_t__ PFNGLXBINDTEXIMAGEEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_EXT_texture_from_pixmap ;
 scalar_t__ glad_glXBindTexImageEXT ;
 scalar_t__ glad_glXReleaseTexImageEXT ;

__attribute__((used)) static void load_GLX_EXT_texture_from_pixmap(GLADloadproc load) {
 if(!GLAD_GLX_EXT_texture_from_pixmap) return;
 glad_glXBindTexImageEXT = (PFNGLXBINDTEXIMAGEEXTPROC)load("glXBindTexImageEXT");
 glad_glXReleaseTexImageEXT = (PFNGLXRELEASETEXIMAGEEXTPROC)load("glXReleaseTexImageEXT");
}

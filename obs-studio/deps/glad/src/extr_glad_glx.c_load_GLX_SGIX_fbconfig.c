
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETVISUALFROMFBCONFIGSGIXPROC ;
typedef scalar_t__ PFNGLXGETFBCONFIGFROMVISUALSGIXPROC ;
typedef scalar_t__ PFNGLXGETFBCONFIGATTRIBSGIXPROC ;
typedef scalar_t__ PFNGLXCREATEGLXPIXMAPWITHCONFIGSGIXPROC ;
typedef scalar_t__ PFNGLXCREATECONTEXTWITHCONFIGSGIXPROC ;
typedef scalar_t__ PFNGLXCHOOSEFBCONFIGSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGIX_fbconfig ;
 scalar_t__ glad_glXChooseFBConfigSGIX ;
 scalar_t__ glad_glXCreateContextWithConfigSGIX ;
 scalar_t__ glad_glXCreateGLXPixmapWithConfigSGIX ;
 scalar_t__ glad_glXGetFBConfigAttribSGIX ;
 scalar_t__ glad_glXGetFBConfigFromVisualSGIX ;
 scalar_t__ glad_glXGetVisualFromFBConfigSGIX ;

__attribute__((used)) static void load_GLX_SGIX_fbconfig(GLADloadproc load) {
 if(!GLAD_GLX_SGIX_fbconfig) return;
 glad_glXGetFBConfigAttribSGIX = (PFNGLXGETFBCONFIGATTRIBSGIXPROC)load("glXGetFBConfigAttribSGIX");
 glad_glXChooseFBConfigSGIX = (PFNGLXCHOOSEFBCONFIGSGIXPROC)load("glXChooseFBConfigSGIX");
 glad_glXCreateGLXPixmapWithConfigSGIX = (PFNGLXCREATEGLXPIXMAPWITHCONFIGSGIXPROC)load("glXCreateGLXPixmapWithConfigSGIX");
 glad_glXCreateContextWithConfigSGIX = (PFNGLXCREATECONTEXTWITHCONFIGSGIXPROC)load("glXCreateContextWithConfigSGIX");
 glad_glXGetVisualFromFBConfigSGIX = (PFNGLXGETVISUALFROMFBCONFIGSGIXPROC)load("glXGetVisualFromFBConfigSGIX");
 glad_glXGetFBConfigFromVisualSGIX = (PFNGLXGETFBCONFIGFROMVISUALSGIXPROC)load("glXGetFBConfigFromVisualSGIX");
}

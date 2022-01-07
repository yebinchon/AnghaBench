
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSHARPENTEXFUNCSGISPROC ;
typedef scalar_t__ PFNGLGETSHARPENTEXFUNCSGISPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIS_sharpen_texture ;
 scalar_t__ glad_glGetSharpenTexFuncSGIS ;
 scalar_t__ glad_glSharpenTexFuncSGIS ;

__attribute__((used)) static void load_GL_SGIS_sharpen_texture(GLADloadproc load) {
 if(!GLAD_GL_SGIS_sharpen_texture) return;
 glad_glSharpenTexFuncSGIS = (PFNGLSHARPENTEXFUNCSGISPROC)load("glSharpenTexFuncSGIS");
 glad_glGetSharpenTexFuncSGIS = (PFNGLGETSHARPENTEXFUNCSGISPROC)load("glGetSharpenTexFuncSGIS");
}

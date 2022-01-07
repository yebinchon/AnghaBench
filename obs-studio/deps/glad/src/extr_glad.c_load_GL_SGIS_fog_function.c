
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETFOGFUNCSGISPROC ;
typedef scalar_t__ PFNGLFOGFUNCSGISPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIS_fog_function ;
 scalar_t__ glad_glFogFuncSGIS ;
 scalar_t__ glad_glGetFogFuncSGIS ;

__attribute__((used)) static void load_GL_SGIS_fog_function(GLADloadproc load) {
 if(!GLAD_GL_SGIS_fog_function) return;
 glad_glFogFuncSGIS = (PFNGLFOGFUNCSGISPROC)load("glFogFuncSGIS");
 glad_glGetFogFuncSGIS = (PFNGLGETFOGFUNCSGISPROC)load("glGetFogFuncSGIS");
}

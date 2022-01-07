
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETDETAILTEXFUNCSGISPROC ;
typedef scalar_t__ PFNGLDETAILTEXFUNCSGISPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIS_detail_texture ;
 scalar_t__ glad_glDetailTexFuncSGIS ;
 scalar_t__ glad_glGetDetailTexFuncSGIS ;

__attribute__((used)) static void load_GL_SGIS_detail_texture(GLADloadproc load) {
 if(!GLAD_GL_SGIS_detail_texture) return;
 glad_glDetailTexFuncSGIS = (PFNGLDETAILTEXFUNCSGISPROC)load("glDetailTexFuncSGIS");
 glad_glGetDetailTexFuncSGIS = (PFNGLGETDETAILTEXFUNCSGISPROC)load("glGetDetailTexFuncSGIS");
}

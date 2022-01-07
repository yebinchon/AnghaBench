
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXFILTERFUNCSGISPROC ;
typedef scalar_t__ PFNGLGETTEXFILTERFUNCSGISPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIS_texture_filter4 ;
 scalar_t__ glad_glGetTexFilterFuncSGIS ;
 scalar_t__ glad_glTexFilterFuncSGIS ;

__attribute__((used)) static void load_GL_SGIS_texture_filter4(GLADloadproc load) {
 if(!GLAD_GL_SGIS_texture_filter4) return;
 glad_glGetTexFilterFuncSGIS = (PFNGLGETTEXFILTERFUNCSGISPROC)load("glGetTexFilterFuncSGIS");
 glad_glTexFilterFuncSGIS = (PFNGLTEXFILTERFUNCSGISPROC)load("glTexFilterFuncSGIS");
}

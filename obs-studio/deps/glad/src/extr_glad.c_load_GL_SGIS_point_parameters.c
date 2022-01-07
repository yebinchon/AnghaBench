
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPOINTPARAMETERFVSGISPROC ;
typedef scalar_t__ PFNGLPOINTPARAMETERFSGISPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIS_point_parameters ;
 scalar_t__ glad_glPointParameterfSGIS ;
 scalar_t__ glad_glPointParameterfvSGIS ;

__attribute__((used)) static void load_GL_SGIS_point_parameters(GLADloadproc load) {
 if(!GLAD_GL_SGIS_point_parameters) return;
 glad_glPointParameterfSGIS = (PFNGLPOINTPARAMETERFSGISPROC)load("glPointParameterfSGIS");
 glad_glPointParameterfvSGIS = (PFNGLPOINTPARAMETERFVSGISPROC)load("glPointParameterfvSGIS");
}

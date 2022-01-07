
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPOINTPARAMETERFVEXTPROC ;
typedef scalar_t__ PFNGLPOINTPARAMETERFEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_point_parameters ;
 scalar_t__ glad_glPointParameterfEXT ;
 scalar_t__ glad_glPointParameterfvEXT ;

__attribute__((used)) static void load_GL_EXT_point_parameters(GLADloadproc load) {
 if(!GLAD_GL_EXT_point_parameters) return;
 glad_glPointParameterfEXT = (PFNGLPOINTPARAMETERFEXTPROC)load("glPointParameterfEXT");
 glad_glPointParameterfvEXT = (PFNGLPOINTPARAMETERFVEXTPROC)load("glPointParameterfvEXT");
}

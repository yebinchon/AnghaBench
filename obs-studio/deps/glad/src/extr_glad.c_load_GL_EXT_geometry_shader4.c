
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMPARAMETERIEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_geometry_shader4 ;
 scalar_t__ glad_glProgramParameteriEXT ;

__attribute__((used)) static void load_GL_EXT_geometry_shader4(GLADloadproc load) {
 if(!GLAD_GL_EXT_geometry_shader4) return;
 glad_glProgramParameteriEXT = (PFNGLPROGRAMPARAMETERIEXTPROC)load("glProgramParameteriEXT");
}

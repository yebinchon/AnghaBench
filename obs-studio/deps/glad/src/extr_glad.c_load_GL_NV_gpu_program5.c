
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC ;
typedef scalar_t__ PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_gpu_program5 ;
 scalar_t__ glad_glGetProgramSubroutineParameteruivNV ;
 scalar_t__ glad_glProgramSubroutineParametersuivNV ;

__attribute__((used)) static void load_GL_NV_gpu_program5(GLADloadproc load) {
 if(!GLAD_GL_NV_gpu_program5) return;
 glad_glProgramSubroutineParametersuivNV = (PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC)load("glProgramSubroutineParametersuivNV");
 glad_glGetProgramSubroutineParameteruivNV = (PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC)load("glGetProgramSubroutineParameteruivNV");
}

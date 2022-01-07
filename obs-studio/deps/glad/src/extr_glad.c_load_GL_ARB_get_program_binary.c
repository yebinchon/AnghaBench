
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMPARAMETERIPROC ;
typedef scalar_t__ PFNGLPROGRAMBINARYPROC ;
typedef scalar_t__ PFNGLGETPROGRAMBINARYPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_get_program_binary ;
 scalar_t__ glad_glGetProgramBinary ;
 scalar_t__ glad_glProgramBinary ;
 scalar_t__ glad_glProgramParameteri ;

__attribute__((used)) static void load_GL_ARB_get_program_binary(GLADloadproc load) {
 if(!GLAD_GL_ARB_get_program_binary) return;
 glad_glGetProgramBinary = (PFNGLGETPROGRAMBINARYPROC)load("glGetProgramBinary");
 glad_glProgramBinary = (PFNGLPROGRAMBINARYPROC)load("glProgramBinary");
 glad_glProgramParameteri = (PFNGLPROGRAMPARAMETERIPROC)load("glProgramParameteri");
}

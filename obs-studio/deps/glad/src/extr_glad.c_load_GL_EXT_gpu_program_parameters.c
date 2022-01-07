
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC ;
typedef scalar_t__ PFNGLPROGRAMENVPARAMETERS4FVEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_gpu_program_parameters ;
 scalar_t__ glad_glProgramEnvParameters4fvEXT ;
 scalar_t__ glad_glProgramLocalParameters4fvEXT ;

__attribute__((used)) static void load_GL_EXT_gpu_program_parameters(GLADloadproc load) {
 if(!GLAD_GL_EXT_gpu_program_parameters) return;
 glad_glProgramEnvParameters4fvEXT = (PFNGLPROGRAMENVPARAMETERS4FVEXTPROC)load("glProgramEnvParameters4fvEXT");
 glad_glProgramLocalParameters4fvEXT = (PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC)load("glProgramLocalParameters4fvEXT");
}

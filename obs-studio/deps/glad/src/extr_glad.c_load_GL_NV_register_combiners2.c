
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC ;
typedef scalar_t__ PFNGLCOMBINERSTAGEPARAMETERFVNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_register_combiners2 ;
 scalar_t__ glad_glCombinerStageParameterfvNV ;
 scalar_t__ glad_glGetCombinerStageParameterfvNV ;

__attribute__((used)) static void load_GL_NV_register_combiners2(GLADloadproc load) {
 if(!GLAD_GL_NV_register_combiners2) return;
 glad_glCombinerStageParameterfvNV = (PFNGLCOMBINERSTAGEPARAMETERFVNVPROC)load("glCombinerStageParameterfvNV");
 glad_glGetCombinerStageParameterfvNV = (PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC)load("glGetCombinerStageParameterfvNV");
}

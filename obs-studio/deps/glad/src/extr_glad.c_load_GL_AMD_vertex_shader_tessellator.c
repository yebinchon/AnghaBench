
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTESSELLATIONMODEAMDPROC ;
typedef scalar_t__ PFNGLTESSELLATIONFACTORAMDPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_AMD_vertex_shader_tessellator ;
 scalar_t__ glad_glTessellationFactorAMD ;
 scalar_t__ glad_glTessellationModeAMD ;

__attribute__((used)) static void load_GL_AMD_vertex_shader_tessellator(GLADloadproc load) {
 if(!GLAD_GL_AMD_vertex_shader_tessellator) return;
 glad_glTessellationFactorAMD = (PFNGLTESSELLATIONFACTORAMDPROC)load("glTessellationFactorAMD");
 glad_glTessellationModeAMD = (PFNGLTESSELLATIONMODEAMDPROC)load("glTessellationModeAMD");
}

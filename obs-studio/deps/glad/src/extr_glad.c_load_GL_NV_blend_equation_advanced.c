
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDPARAMETERINVPROC ;
typedef scalar_t__ PFNGLBLENDBARRIERNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_blend_equation_advanced ;
 scalar_t__ glad_glBlendBarrierNV ;
 scalar_t__ glad_glBlendParameteriNV ;

__attribute__((used)) static void load_GL_NV_blend_equation_advanced(GLADloadproc load) {
 if(!GLAD_GL_NV_blend_equation_advanced) return;
 glad_glBlendParameteriNV = (PFNGLBLENDPARAMETERINVPROC)load("glBlendParameteriNV");
 glad_glBlendBarrierNV = (PFNGLBLENDBARRIERNVPROC)load("glBlendBarrierNV");
}

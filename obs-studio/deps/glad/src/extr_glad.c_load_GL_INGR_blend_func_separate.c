
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDFUNCSEPARATEINGRPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_INGR_blend_func_separate ;
 scalar_t__ glad_glBlendFuncSeparateINGR ;

__attribute__((used)) static void load_GL_INGR_blend_func_separate(GLADloadproc load) {
 if(!GLAD_GL_INGR_blend_func_separate) return;
 glad_glBlendFuncSeparateINGR = (PFNGLBLENDFUNCSEPARATEINGRPROC)load("glBlendFuncSeparateINGR");
}

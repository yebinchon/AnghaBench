
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC ;
typedef scalar_t__ PFNGLBLENDFUNCINDEXEDAMDPROC ;
typedef scalar_t__ PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC ;
typedef scalar_t__ PFNGLBLENDEQUATIONINDEXEDAMDPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_AMD_draw_buffers_blend ;
 scalar_t__ glad_glBlendEquationIndexedAMD ;
 scalar_t__ glad_glBlendEquationSeparateIndexedAMD ;
 scalar_t__ glad_glBlendFuncIndexedAMD ;
 scalar_t__ glad_glBlendFuncSeparateIndexedAMD ;

__attribute__((used)) static void load_GL_AMD_draw_buffers_blend(GLADloadproc load) {
 if(!GLAD_GL_AMD_draw_buffers_blend) return;
 glad_glBlendFuncIndexedAMD = (PFNGLBLENDFUNCINDEXEDAMDPROC)load("glBlendFuncIndexedAMD");
 glad_glBlendFuncSeparateIndexedAMD = (PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC)load("glBlendFuncSeparateIndexedAMD");
 glad_glBlendEquationIndexedAMD = (PFNGLBLENDEQUATIONINDEXEDAMDPROC)load("glBlendEquationIndexedAMD");
 glad_glBlendEquationSeparateIndexedAMD = (PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC)load("glBlendEquationSeparateIndexedAMD");
}

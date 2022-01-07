
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLENDCONDITIONALRENDERNVPROC ;
typedef scalar_t__ PFNGLBEGINCONDITIONALRENDERNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_conditional_render ;
 scalar_t__ glad_glBeginConditionalRenderNV ;
 scalar_t__ glad_glEndConditionalRenderNV ;

__attribute__((used)) static void load_GL_NV_conditional_render(GLADloadproc load) {
 if(!GLAD_GL_NV_conditional_render) return;
 glad_glBeginConditionalRenderNV = (PFNGLBEGINCONDITIONALRENDERNVPROC)load("glBeginConditionalRenderNV");
 glad_glEndConditionalRenderNV = (PFNGLENDCONDITIONALRENDERNVPROC)load("glEndConditionalRenderNV");
}

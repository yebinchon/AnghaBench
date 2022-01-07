
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLENDCONDITIONALRENDERNVXPROC ;
typedef scalar_t__ PFNGLBEGINCONDITIONALRENDERNVXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NVX_conditional_render ;
 scalar_t__ glad_glBeginConditionalRenderNVX ;
 scalar_t__ glad_glEndConditionalRenderNVX ;

__attribute__((used)) static void load_GL_NVX_conditional_render(GLADloadproc load) {
 if(!GLAD_GL_NVX_conditional_render) return;
 glad_glBeginConditionalRenderNVX = (PFNGLBEGINCONDITIONALRENDERNVXPROC)load("glBeginConditionalRenderNVX");
 glad_glEndConditionalRenderNVX = (PFNGLENDCONDITIONALRENDERNVXPROC)load("glEndConditionalRenderNVX");
}

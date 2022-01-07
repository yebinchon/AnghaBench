
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDFUNCSEPARATEIARBPROC ;
typedef scalar_t__ PFNGLBLENDFUNCIARBPROC ;
typedef scalar_t__ PFNGLBLENDEQUATIONSEPARATEIARBPROC ;
typedef scalar_t__ PFNGLBLENDEQUATIONIARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_draw_buffers_blend ;
 scalar_t__ glad_glBlendEquationSeparateiARB ;
 scalar_t__ glad_glBlendEquationiARB ;
 scalar_t__ glad_glBlendFuncSeparateiARB ;
 scalar_t__ glad_glBlendFunciARB ;

__attribute__((used)) static void load_GL_ARB_draw_buffers_blend(GLADloadproc load) {
 if(!GLAD_GL_ARB_draw_buffers_blend) return;
 glad_glBlendEquationiARB = (PFNGLBLENDEQUATIONIARBPROC)load("glBlendEquationiARB");
 glad_glBlendEquationSeparateiARB = (PFNGLBLENDEQUATIONSEPARATEIARBPROC)load("glBlendEquationSeparateiARB");
 glad_glBlendFunciARB = (PFNGLBLENDFUNCIARBPROC)load("glBlendFunciARB");
 glad_glBlendFuncSeparateiARB = (PFNGLBLENDFUNCSEPARATEIARBPROC)load("glBlendFuncSeparateiARB");
}

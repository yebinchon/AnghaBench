
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDEQUATIONSEPARATEEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_blend_equation_separate ;
 scalar_t__ glad_glBlendEquationSeparateEXT ;

__attribute__((used)) static void load_GL_EXT_blend_equation_separate(GLADloadproc load) {
 if(!GLAD_GL_EXT_blend_equation_separate) return;
 glad_glBlendEquationSeparateEXT = (PFNGLBLENDEQUATIONSEPARATEEXTPROC)load("glBlendEquationSeparateEXT");
}

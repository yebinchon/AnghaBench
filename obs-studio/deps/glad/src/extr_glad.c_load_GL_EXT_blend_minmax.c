
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDEQUATIONEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_blend_minmax ;
 scalar_t__ glad_glBlendEquationEXT ;

__attribute__((used)) static void load_GL_EXT_blend_minmax(GLADloadproc load) {
 if(!GLAD_GL_EXT_blend_minmax) return;
 glad_glBlendEquationEXT = (PFNGLBLENDEQUATIONEXTPROC)load("glBlendEquationEXT");
}

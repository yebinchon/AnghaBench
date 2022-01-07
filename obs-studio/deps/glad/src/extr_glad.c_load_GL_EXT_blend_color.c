
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDCOLOREXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_blend_color ;
 scalar_t__ glad_glBlendColorEXT ;

__attribute__((used)) static void load_GL_EXT_blend_color(GLADloadproc load) {
 if(!GLAD_GL_EXT_blend_color) return;
 glad_glBlendColorEXT = (PFNGLBLENDCOLOREXTPROC)load("glBlendColorEXT");
}

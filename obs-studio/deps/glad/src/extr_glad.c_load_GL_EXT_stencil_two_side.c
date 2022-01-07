
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLACTIVESTENCILFACEEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_stencil_two_side ;
 scalar_t__ glad_glActiveStencilFaceEXT ;

__attribute__((used)) static void load_GL_EXT_stencil_two_side(GLADloadproc load) {
 if(!GLAD_GL_EXT_stencil_two_side) return;
 glad_glActiveStencilFaceEXT = (PFNGLACTIVESTENCILFACEEXTPROC)load("glActiveStencilFaceEXT");
}

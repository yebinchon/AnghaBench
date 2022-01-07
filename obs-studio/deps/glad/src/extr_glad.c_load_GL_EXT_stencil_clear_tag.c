
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSTENCILCLEARTAGEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_stencil_clear_tag ;
 scalar_t__ glad_glStencilClearTagEXT ;

__attribute__((used)) static void load_GL_EXT_stencil_clear_tag(GLADloadproc load) {
 if(!GLAD_GL_EXT_stencil_clear_tag) return;
 glad_glStencilClearTagEXT = (PFNGLSTENCILCLEARTAGEXTPROC)load("glStencilClearTagEXT");
}

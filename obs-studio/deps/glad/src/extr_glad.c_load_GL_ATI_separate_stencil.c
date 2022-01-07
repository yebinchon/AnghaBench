
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSTENCILOPSEPARATEATIPROC ;
typedef scalar_t__ PFNGLSTENCILFUNCSEPARATEATIPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ATI_separate_stencil ;
 scalar_t__ glad_glStencilFuncSeparateATI ;
 scalar_t__ glad_glStencilOpSeparateATI ;

__attribute__((used)) static void load_GL_ATI_separate_stencil(GLADloadproc load) {
 if(!GLAD_GL_ATI_separate_stencil) return;
 glad_glStencilOpSeparateATI = (PFNGLSTENCILOPSEPARATEATIPROC)load("glStencilOpSeparateATI");
 glad_glStencilFuncSeparateATI = (PFNGLSTENCILFUNCSEPARATEATIPROC)load("glStencilFuncSeparateATI");
}

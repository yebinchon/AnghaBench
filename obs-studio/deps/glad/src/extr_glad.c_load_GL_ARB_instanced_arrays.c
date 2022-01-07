
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXATTRIBDIVISORARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_instanced_arrays ;
 scalar_t__ glad_glVertexAttribDivisorARB ;

__attribute__((used)) static void load_GL_ARB_instanced_arrays(GLADloadproc load) {
 if(!GLAD_GL_ARB_instanced_arrays) return;
 glad_glVertexAttribDivisorARB = (PFNGLVERTEXATTRIBDIVISORARBPROC)load("glVertexAttribDivisorARB");
}

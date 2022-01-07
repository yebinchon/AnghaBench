
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLINDEXFUNCEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_index_func ;
 scalar_t__ glad_glIndexFuncEXT ;

__attribute__((used)) static void load_GL_EXT_index_func(GLADloadproc load) {
 if(!GLAD_GL_EXT_index_func) return;
 glad_glIndexFuncEXT = (PFNGLINDEXFUNCEXTPROC)load("glIndexFuncEXT");
}

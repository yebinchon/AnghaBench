
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCULLPARAMETERFVEXTPROC ;
typedef scalar_t__ PFNGLCULLPARAMETERDVEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_cull_vertex ;
 scalar_t__ glad_glCullParameterdvEXT ;
 scalar_t__ glad_glCullParameterfvEXT ;

__attribute__((used)) static void load_GL_EXT_cull_vertex(GLADloadproc load) {
 if(!GLAD_GL_EXT_cull_vertex) return;
 glad_glCullParameterdvEXT = (PFNGLCULLPARAMETERDVEXTPROC)load("glCullParameterdvEXT");
 glad_glCullParameterfvEXT = (PFNGLCULLPARAMETERFVEXTPROC)load("glCullParameterfvEXT");
}

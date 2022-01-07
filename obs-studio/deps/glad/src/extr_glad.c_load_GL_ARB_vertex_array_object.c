
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLISVERTEXARRAYPROC ;
typedef scalar_t__ PFNGLGENVERTEXARRAYSPROC ;
typedef scalar_t__ PFNGLDELETEVERTEXARRAYSPROC ;
typedef scalar_t__ PFNGLBINDVERTEXARRAYPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_vertex_array_object ;
 scalar_t__ glad_glBindVertexArray ;
 scalar_t__ glad_glDeleteVertexArrays ;
 scalar_t__ glad_glGenVertexArrays ;
 scalar_t__ glad_glIsVertexArray ;

__attribute__((used)) static void load_GL_ARB_vertex_array_object(GLADloadproc load) {
 if(!GLAD_GL_ARB_vertex_array_object) return;
 glad_glBindVertexArray = (PFNGLBINDVERTEXARRAYPROC)load("glBindVertexArray");
 glad_glDeleteVertexArrays = (PFNGLDELETEVERTEXARRAYSPROC)load("glDeleteVertexArrays");
 glad_glGenVertexArrays = (PFNGLGENVERTEXARRAYSPROC)load("glGenVertexArrays");
 glad_glIsVertexArray = (PFNGLISVERTEXARRAYPROC)load("glIsVertexArray");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXARRAYRANGENVPROC ;
typedef scalar_t__ PFNGLFLUSHVERTEXARRAYRANGENVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_vertex_array_range ;
 scalar_t__ glad_glFlushVertexArrayRangeNV ;
 scalar_t__ glad_glVertexArrayRangeNV ;

__attribute__((used)) static void load_GL_NV_vertex_array_range(GLADloadproc load) {
 if(!GLAD_GL_NV_vertex_array_range) return;
 glad_glFlushVertexArrayRangeNV = (PFNGLFLUSHVERTEXARRAYRANGENVPROC)load("glFlushVertexArrayRangeNV");
 glad_glVertexArrayRangeNV = (PFNGLVERTEXARRAYRANGENVPROC)load("glVertexArrayRangeNV");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXARRAYRANGEAPPLEPROC ;
typedef scalar_t__ PFNGLVERTEXARRAYPARAMETERIAPPLEPROC ;
typedef scalar_t__ PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_APPLE_vertex_array_range ;
 scalar_t__ glad_glFlushVertexArrayRangeAPPLE ;
 scalar_t__ glad_glVertexArrayParameteriAPPLE ;
 scalar_t__ glad_glVertexArrayRangeAPPLE ;

__attribute__((used)) static void load_GL_APPLE_vertex_array_range(GLADloadproc load) {
 if(!GLAD_GL_APPLE_vertex_array_range) return;
 glad_glVertexArrayRangeAPPLE = (PFNGLVERTEXARRAYRANGEAPPLEPROC)load("glVertexArrayRangeAPPLE");
 glad_glFlushVertexArrayRangeAPPLE = (PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC)load("glFlushVertexArrayRangeAPPLE");
 glad_glVertexArrayParameteriAPPLE = (PFNGLVERTEXARRAYPARAMETERIAPPLEPROC)load("glVertexArrayParameteriAPPLE");
}

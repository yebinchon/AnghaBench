
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROVOKINGVERTEXEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_provoking_vertex ;
 scalar_t__ glad_glProvokingVertexEXT ;

__attribute__((used)) static void load_GL_EXT_provoking_vertex(GLADloadproc load) {
 if(!GLAD_GL_EXT_provoking_vertex) return;
 glad_glProvokingVertexEXT = (PFNGLPROVOKINGVERTEXEXTPROC)load("glProvokingVertexEXT");
}

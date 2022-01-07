
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROVOKINGVERTEXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_provoking_vertex ;
 scalar_t__ glad_glProvokingVertex ;

__attribute__((used)) static void load_GL_ARB_provoking_vertex(GLADloadproc load) {
 if(!GLAD_GL_ARB_provoking_vertex) return;
 glad_glProvokingVertex = (PFNGLPROVOKINGVERTEXPROC)load("glProvokingVertex");
}

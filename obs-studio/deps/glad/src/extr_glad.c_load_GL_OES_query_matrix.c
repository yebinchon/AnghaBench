
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLQUERYMATRIXXOESPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_OES_query_matrix ;
 scalar_t__ glad_glQueryMatrixxOES ;

__attribute__((used)) static void load_GL_OES_query_matrix(GLADloadproc load) {
 if(!GLAD_GL_OES_query_matrix) return;
 glad_glQueryMatrixxOES = (PFNGLQUERYMATRIXXOESPROC)load("glQueryMatrixxOES");
}

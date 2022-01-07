
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETINTERNALFORMATI64VPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_internalformat_query2 ;
 scalar_t__ glad_glGetInternalformati64v ;

__attribute__((used)) static void load_GL_ARB_internalformat_query2(GLADloadproc load) {
 if(!GLAD_GL_ARB_internalformat_query2) return;
 glad_glGetInternalformati64v = (PFNGLGETINTERNALFORMATI64VPROC)load("glGetInternalformati64v");
}

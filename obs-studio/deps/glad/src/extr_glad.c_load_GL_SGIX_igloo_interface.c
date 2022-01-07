
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLIGLOOINTERFACESGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIX_igloo_interface ;
 scalar_t__ glad_glIglooInterfaceSGIX ;

__attribute__((used)) static void load_GL_SGIX_igloo_interface(GLADloadproc load) {
 if(!GLAD_GL_SGIX_igloo_interface) return;
 glad_glIglooInterfaceSGIX = (PFNGLIGLOOINTERFACESGIXPROC)load("glIglooInterfaceSGIX");
}

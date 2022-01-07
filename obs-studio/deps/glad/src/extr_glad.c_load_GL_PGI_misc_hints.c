
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLHINTPGIPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_PGI_misc_hints ;
 scalar_t__ glad_glHintPGI ;

__attribute__((used)) static void load_GL_PGI_misc_hints(GLADloadproc load) {
 if(!GLAD_GL_PGI_misc_hints) return;
 glad_glHintPGI = (PFNGLHINTPGIPROC)load("glHintPGI");
}

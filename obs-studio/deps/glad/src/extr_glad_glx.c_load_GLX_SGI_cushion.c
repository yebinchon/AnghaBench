
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXCUSHIONSGIPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGI_cushion ;
 scalar_t__ glad_glXCushionSGI ;

__attribute__((used)) static void load_GLX_SGI_cushion(GLADloadproc load) {
 if(!GLAD_GLX_SGI_cushion) return;
 glad_glXCushionSGI = (PFNGLXCUSHIONSGIPROC)load("glXCushionSGI");
}

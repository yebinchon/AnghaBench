
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETPROCADDRESSPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_VERSION_1_4 ;
 scalar_t__ glad_glXGetProcAddress ;

__attribute__((used)) static void load_GLX_VERSION_1_4(GLADloadproc load) {
 if(!GLAD_GLX_VERSION_1_4) return;
 glad_glXGetProcAddress = (PFNGLXGETPROCADDRESSPROC)load("glXGetProcAddress");
}

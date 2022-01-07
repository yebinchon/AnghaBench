
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETCURRENTDISPLAYPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_VERSION_1_2 ;
 scalar_t__ glad_glXGetCurrentDisplay ;

__attribute__((used)) static void load_GLX_VERSION_1_2(GLADloadproc load) {
 if(!GLAD_GLX_VERSION_1_2) return;
 glad_glXGetCurrentDisplay = (PFNGLXGETCURRENTDISPLAYPROC)load("glXGetCurrentDisplay");
}

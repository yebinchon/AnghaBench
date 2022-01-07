
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXMAKECURRENTREADSGIPROC ;
typedef scalar_t__ PFNGLXGETCURRENTREADDRAWABLESGIPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGI_make_current_read ;
 scalar_t__ glad_glXGetCurrentReadDrawableSGI ;
 scalar_t__ glad_glXMakeCurrentReadSGI ;

__attribute__((used)) static void load_GLX_SGI_make_current_read(GLADloadproc load) {
 if(!GLAD_GLX_SGI_make_current_read) return;
 glad_glXMakeCurrentReadSGI = (PFNGLXMAKECURRENTREADSGIPROC)load("glXMakeCurrentReadSGI");
 glad_glXGetCurrentReadDrawableSGI = (PFNGLXGETCURRENTREADDRAWABLESGIPROC)load("glXGetCurrentReadDrawableSGI");
}

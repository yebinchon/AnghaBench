
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXWAITFORSBCOMLPROC ;
typedef scalar_t__ PFNGLXWAITFORMSCOMLPROC ;
typedef scalar_t__ PFNGLXSWAPBUFFERSMSCOMLPROC ;
typedef scalar_t__ PFNGLXGETSYNCVALUESOMLPROC ;
typedef scalar_t__ PFNGLXGETMSCRATEOMLPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_OML_sync_control ;
 scalar_t__ glad_glXGetMscRateOML ;
 scalar_t__ glad_glXGetSyncValuesOML ;
 scalar_t__ glad_glXSwapBuffersMscOML ;
 scalar_t__ glad_glXWaitForMscOML ;
 scalar_t__ glad_glXWaitForSbcOML ;

__attribute__((used)) static void load_GLX_OML_sync_control(GLADloadproc load) {
 if(!GLAD_GLX_OML_sync_control) return;
 glad_glXGetSyncValuesOML = (PFNGLXGETSYNCVALUESOMLPROC)load("glXGetSyncValuesOML");
 glad_glXGetMscRateOML = (PFNGLXGETMSCRATEOMLPROC)load("glXGetMscRateOML");
 glad_glXSwapBuffersMscOML = (PFNGLXSWAPBUFFERSMSCOMLPROC)load("glXSwapBuffersMscOML");
 glad_glXWaitForMscOML = (PFNGLXWAITFORMSCOMLPROC)load("glXWaitForMscOML");
 glad_glXWaitForSbcOML = (PFNGLXWAITFORSBCOMLPROC)load("glXWaitForSbcOML");
}

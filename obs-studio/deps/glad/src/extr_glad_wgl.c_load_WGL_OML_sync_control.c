
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLWAITFORSBCOMLPROC ;
typedef scalar_t__ PFNWGLWAITFORMSCOMLPROC ;
typedef scalar_t__ PFNWGLSWAPLAYERBUFFERSMSCOMLPROC ;
typedef scalar_t__ PFNWGLSWAPBUFFERSMSCOMLPROC ;
typedef scalar_t__ PFNWGLGETSYNCVALUESOMLPROC ;
typedef scalar_t__ PFNWGLGETMSCRATEOMLPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_OML_sync_control ;
 scalar_t__ glad_wglGetMscRateOML ;
 scalar_t__ glad_wglGetSyncValuesOML ;
 scalar_t__ glad_wglSwapBuffersMscOML ;
 scalar_t__ glad_wglSwapLayerBuffersMscOML ;
 scalar_t__ glad_wglWaitForMscOML ;
 scalar_t__ glad_wglWaitForSbcOML ;

__attribute__((used)) static void load_WGL_OML_sync_control(GLADloadproc load) {
 if(!GLAD_WGL_OML_sync_control) return;
 glad_wglGetSyncValuesOML = (PFNWGLGETSYNCVALUESOMLPROC)load("wglGetSyncValuesOML");
 glad_wglGetMscRateOML = (PFNWGLGETMSCRATEOMLPROC)load("wglGetMscRateOML");
 glad_wglSwapBuffersMscOML = (PFNWGLSWAPBUFFERSMSCOMLPROC)load("wglSwapBuffersMscOML");
 glad_wglSwapLayerBuffersMscOML = (PFNWGLSWAPLAYERBUFFERSMSCOMLPROC)load("wglSwapLayerBuffersMscOML");
 glad_wglWaitForMscOML = (PFNWGLWAITFORMSCOMLPROC)load("wglWaitForMscOML");
 glad_wglWaitForSbcOML = (PFNWGLWAITFORSBCOMLPROC)load("wglWaitForSbcOML");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLSETSTEREOEMITTERSTATE3DLPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_3DL_stereo_control ;
 scalar_t__ glad_wglSetStereoEmitterState3DL ;

__attribute__((used)) static void load_WGL_3DL_stereo_control(GLADloadproc load) {
 if(!GLAD_WGL_3DL_stereo_control) return;
 glad_wglSetStereoEmitterState3DL = (PFNWGLSETSTEREOEMITTERSTATE3DLPROC)load("wglSetStereoEmitterState3DL");
}

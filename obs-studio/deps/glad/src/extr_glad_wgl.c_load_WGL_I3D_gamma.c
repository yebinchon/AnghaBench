
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLSETGAMMATABLEPARAMETERSI3DPROC ;
typedef scalar_t__ PFNWGLSETGAMMATABLEI3DPROC ;
typedef scalar_t__ PFNWGLGETGAMMATABLEPARAMETERSI3DPROC ;
typedef scalar_t__ PFNWGLGETGAMMATABLEI3DPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_I3D_gamma ;
 scalar_t__ glad_wglGetGammaTableI3D ;
 scalar_t__ glad_wglGetGammaTableParametersI3D ;
 scalar_t__ glad_wglSetGammaTableI3D ;
 scalar_t__ glad_wglSetGammaTableParametersI3D ;

__attribute__((used)) static void load_WGL_I3D_gamma(GLADloadproc load) {
 if(!GLAD_WGL_I3D_gamma) return;
 glad_wglGetGammaTableParametersI3D = (PFNWGLGETGAMMATABLEPARAMETERSI3DPROC)load("wglGetGammaTableParametersI3D");
 glad_wglSetGammaTableParametersI3D = (PFNWGLSETGAMMATABLEPARAMETERSI3DPROC)load("wglSetGammaTableParametersI3D");
 glad_wglGetGammaTableI3D = (PFNWGLGETGAMMATABLEI3DPROC)load("wglGetGammaTableI3D");
 glad_wglSetGammaTableI3D = (PFNWGLSETGAMMATABLEI3DPROC)load("wglSetGammaTableI3D");
}

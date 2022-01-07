
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLGETEXTENSIONSSTRINGARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_ARB_extensions_string ;
 scalar_t__ glad_wglGetExtensionsStringARB ;

__attribute__((used)) static void load_WGL_ARB_extensions_string(GLADloadproc load) {
 if(!GLAD_WGL_ARB_extensions_string) return;
 glad_wglGetExtensionsStringARB = (PFNWGLGETEXTENSIONSSTRINGARBPROC)load("wglGetExtensionsStringARB");
}

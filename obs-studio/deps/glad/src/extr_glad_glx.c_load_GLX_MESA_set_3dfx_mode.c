
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXSET3DFXMODEMESAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_MESA_set_3dfx_mode ;
 scalar_t__ glad_glXSet3DfxModeMESA ;

__attribute__((used)) static void load_GLX_MESA_set_3dfx_mode(GLADloadproc load) {
 if(!GLAD_GLX_MESA_set_3dfx_mode) return;
 glad_glXSet3DfxModeMESA = (PFNGLXSET3DFXMODEMESAPROC)load("glXSet3DfxModeMESA");
}

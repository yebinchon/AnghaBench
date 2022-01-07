
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXSWAPINTERVALMESAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_MESA_swap_control ;
 scalar_t__ glad_glXSwapIntervalMESA ;

__attribute__((used)) static void load_GLX_MESA_swap_control(GLADloadproc load) {
 if(!GLAD_GLX_MESA_swap_control) return;
 glad_glXSwapIntervalMESA = (PFNGLXSWAPINTERVALMESAPROC)load("glXSwapIntervalMESA");
}

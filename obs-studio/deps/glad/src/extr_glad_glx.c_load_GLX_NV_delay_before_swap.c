
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXDELAYBEFORESWAPNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_NV_delay_before_swap ;
 scalar_t__ glad_glXDelayBeforeSwapNV ;

__attribute__((used)) static void load_GLX_NV_delay_before_swap(GLADloadproc load) {
 if(!GLAD_GLX_NV_delay_before_swap) return;
 glad_glXDelayBeforeSwapNV = (PFNGLXDELAYBEFORESWAPNVPROC)load("glXDelayBeforeSwapNV");
}

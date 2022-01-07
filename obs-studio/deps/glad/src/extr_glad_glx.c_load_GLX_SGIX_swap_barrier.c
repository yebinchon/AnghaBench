
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXQUERYMAXSWAPBARRIERSSGIXPROC ;
typedef scalar_t__ PFNGLXBINDSWAPBARRIERSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGIX_swap_barrier ;
 scalar_t__ glad_glXBindSwapBarrierSGIX ;
 scalar_t__ glad_glXQueryMaxSwapBarriersSGIX ;

__attribute__((used)) static void load_GLX_SGIX_swap_barrier(GLADloadproc load) {
 if(!GLAD_GLX_SGIX_swap_barrier) return;
 glad_glXBindSwapBarrierSGIX = (PFNGLXBINDSWAPBARRIERSGIXPROC)load("glXBindSwapBarrierSGIX");
 glad_glXQueryMaxSwapBarriersSGIX = (PFNGLXQUERYMAXSWAPBARRIERSSGIXPROC)load("glXQueryMaxSwapBarriersSGIX");
}

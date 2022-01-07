
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXRESETFRAMECOUNTNVPROC ;
typedef scalar_t__ PFNGLXQUERYSWAPGROUPNVPROC ;
typedef scalar_t__ PFNGLXQUERYMAXSWAPGROUPSNVPROC ;
typedef scalar_t__ PFNGLXQUERYFRAMECOUNTNVPROC ;
typedef scalar_t__ PFNGLXJOINSWAPGROUPNVPROC ;
typedef scalar_t__ PFNGLXBINDSWAPBARRIERNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_NV_swap_group ;
 scalar_t__ glad_glXBindSwapBarrierNV ;
 scalar_t__ glad_glXJoinSwapGroupNV ;
 scalar_t__ glad_glXQueryFrameCountNV ;
 scalar_t__ glad_glXQueryMaxSwapGroupsNV ;
 scalar_t__ glad_glXQuerySwapGroupNV ;
 scalar_t__ glad_glXResetFrameCountNV ;

__attribute__((used)) static void load_GLX_NV_swap_group(GLADloadproc load) {
 if(!GLAD_GLX_NV_swap_group) return;
 glad_glXJoinSwapGroupNV = (PFNGLXJOINSWAPGROUPNVPROC)load("glXJoinSwapGroupNV");
 glad_glXBindSwapBarrierNV = (PFNGLXBINDSWAPBARRIERNVPROC)load("glXBindSwapBarrierNV");
 glad_glXQuerySwapGroupNV = (PFNGLXQUERYSWAPGROUPNVPROC)load("glXQuerySwapGroupNV");
 glad_glXQueryMaxSwapGroupsNV = (PFNGLXQUERYMAXSWAPGROUPSNVPROC)load("glXQueryMaxSwapGroupsNV");
 glad_glXQueryFrameCountNV = (PFNGLXQUERYFRAMECOUNTNVPROC)load("glXQueryFrameCountNV");
 glad_glXResetFrameCountNV = (PFNGLXRESETFRAMECOUNTNVPROC)load("glXResetFrameCountNV");
}

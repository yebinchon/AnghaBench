
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXJOINSWAPGROUPSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGIX_swap_group ;
 scalar_t__ glad_glXJoinSwapGroupSGIX ;

__attribute__((used)) static void load_GLX_SGIX_swap_group(GLADloadproc load) {
 if(!GLAD_GLX_SGIX_swap_group) return;
 glad_glXJoinSwapGroupSGIX = (PFNGLXJOINSWAPGROUPSGIXPROC)load("glXJoinSwapGroupSGIX");
}

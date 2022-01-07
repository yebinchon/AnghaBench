
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLDELAYBEFORESWAPNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_NV_delay_before_swap ;
 scalar_t__ glad_wglDelayBeforeSwapNV ;

__attribute__((used)) static void load_WGL_NV_delay_before_swap(GLADloadproc load) {
 if(!GLAD_WGL_NV_delay_before_swap) return;
 glad_wglDelayBeforeSwapNV = (PFNWGLDELAYBEFORESWAPNVPROC)load("wglDelayBeforeSwapNV");
}

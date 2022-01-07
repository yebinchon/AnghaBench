
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_swap_chain {int dummy; } ;


 int UNUSED_PARAMETER (struct gs_swap_chain*) ;

bool gl_platform_init_swapchain(struct gs_swap_chain *swap)
{
 UNUSED_PARAMETER(swap);
 return 1;
}

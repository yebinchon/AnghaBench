
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_init_data {int dummy; } ;
struct gs_swap_chain {int wi; struct gs_init_data info; int * device; } ;
typedef struct gs_swap_chain gs_swapchain_t ;
typedef int gs_device_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 struct gs_swap_chain* bzalloc (int) ;
 int gl_platform_init_swapchain (struct gs_swap_chain*) ;
 int gl_windowinfo_create (struct gs_init_data const*) ;
 int gs_swapchain_destroy (struct gs_swap_chain*) ;

gs_swapchain_t *device_swapchain_create(gs_device_t *device,
     const struct gs_init_data *info)
{
 struct gs_swap_chain *swap = bzalloc(sizeof(struct gs_swap_chain));

 swap->device = device;
 swap->info = *info;
 swap->wi = gl_windowinfo_create(info);
 if (!swap->wi) {
  blog(LOG_ERROR, "device_swapchain_create (GL) failed");
  gs_swapchain_destroy(swap);
  return ((void*)0);
 }

 if (!gl_platform_init_swapchain(swap)) {
  blog(LOG_ERROR, "gl_platform_init_swapchain  failed");
  gs_swapchain_destroy(swap);
  return ((void*)0);
 }

 return swap;
}

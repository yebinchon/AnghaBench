
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ auto_depth_stencil_format; int enable_auto_depth_stencil; } ;
struct wined3d_swapchain {int num_contexts; int * context; TYPE_5__* ds_format; TYPE_3__ desc; int front_buffer; TYPE_2__* device; } ;
struct wined3d_gl_info {int dummy; } ;
typedef enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
struct TYPE_11__ {scalar_t__ id; } ;
struct TYPE_10__ {scalar_t__ offscreen_rendering_mode; } ;
struct TYPE_8__ {TYPE_1__* adapter; } ;
struct TYPE_7__ {struct wined3d_gl_info gl_info; } ;


 unsigned int ARRAY_SIZE (int const*) ;
 int FIXME (char*) ;
 scalar_t__ ORM_FBO ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;





 int WINED3DUSAGE_DEPTHSTENCIL ;
 int context_create (struct wined3d_swapchain*,int ,TYPE_5__*) ;
 int context_release (int ) ;
 int debug_d3dformat (int const) ;
 TYPE_5__* wined3d_get_format (struct wined3d_gl_info const*,int const,int ) ;
 TYPE_4__ wined3d_settings ;
 int wined3d_swapchain_update_swap_interval_cs (struct wined3d_swapchain*) ;

__attribute__((used)) static void wined3d_swapchain_cs_init(void *object)
{
    struct wined3d_swapchain *swapchain = object;
    const struct wined3d_gl_info *gl_info;
    unsigned int i;

    static const enum wined3d_format_id formats[] =
    {
        131,
        130,
        129,
        132,
        128,
    };

    gl_info = &swapchain->device->adapter->gl_info;



    for (i = 0; i < ARRAY_SIZE(formats); ++i)
    {
        swapchain->ds_format = wined3d_get_format(gl_info, formats[i], WINED3DUSAGE_DEPTHSTENCIL);
        if ((swapchain->context[0] = context_create(swapchain, swapchain->front_buffer, swapchain->ds_format)))
            break;
        TRACE("Depth stencil format %s is not supported, trying next format.\n", debug_d3dformat(formats[i]));
    }

    if (!swapchain->context[0])
    {
        WARN("Failed to create context.\n");
        return;
    }
    swapchain->num_contexts = 1;

    if (wined3d_settings.offscreen_rendering_mode != ORM_FBO
            && (!swapchain->desc.enable_auto_depth_stencil
            || swapchain->desc.auto_depth_stencil_format != swapchain->ds_format->id))
        FIXME("Add OpenGL context recreation support.\n");

    context_release(swapchain->context[0]);

    wined3d_swapchain_update_swap_interval_cs(swapchain);
}

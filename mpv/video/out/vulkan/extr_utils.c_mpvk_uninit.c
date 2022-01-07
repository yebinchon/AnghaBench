
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpvk_ctx {int pl_log; int ctx; TYPE_1__* vkinst; int * surface; } ;
struct TYPE_3__ {int instance; } ;


 int TA_FREEP (int *) ;
 int assert (TYPE_1__*) ;
 int pl_context_destroy (int *) ;
 int pl_vk_inst_destroy (TYPE_1__**) ;
 int vkDestroySurfaceKHR (int ,int *,int *) ;

void mpvk_uninit(struct mpvk_ctx *vk)
{
    if (vk->surface) {
        assert(vk->vkinst);
        vkDestroySurfaceKHR(vk->vkinst->instance, vk->surface, ((void*)0));
        vk->surface = ((void*)0);
    }

    pl_vk_inst_destroy(&vk->vkinst);
    pl_context_destroy(&vk->ctx);
    TA_FREEP(&vk->pl_log);
}

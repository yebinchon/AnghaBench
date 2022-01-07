
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {struct vdpctx* priv; } ;
struct vdpctx {TYPE_1__* mpvdp; int vdp_device; int preemption_counter; } ;
struct TYPE_2__ {int vdp_device; } ;


 scalar_t__ initialize_vdpau_objects (struct vo*) ;
 int mark_vdpau_objects_uninitialized (struct vo*) ;
 int mp_vdpau_handle_preemption (TYPE_1__*,int *) ;

__attribute__((used)) static bool check_preemption(struct vo *vo)
{
    struct vdpctx *vc = vo->priv;

    int r = mp_vdpau_handle_preemption(vc->mpvdp, &vc->preemption_counter);
    if (r < 1) {
        mark_vdpau_objects_uninitialized(vo);
        if (r < 0)
            return 0;
        vc->vdp_device = vc->mpvdp->vdp_device;
        if (initialize_vdpau_objects(vo) < 0)
            return 0;
    }
    return 1;
}

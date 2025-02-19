
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ samplers_compare; } ;
struct TYPE_5__ {scalar_t__ boolclip_compare; } ;
struct TYPE_4__ {int const swizzle_map; scalar_t__ clip_enabled; scalar_t__ fog_src; } ;
struct arb_vs_compile_args {scalar_t__ ps_signature; int loop_ctrl; TYPE_3__ vertex; TYPE_2__ clip; TYPE_1__ super; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int memcmp (int ,int ,int) ;

__attribute__((used)) static inline BOOL vs_args_equal(const struct arb_vs_compile_args *stored, const struct arb_vs_compile_args *new,
                                 const DWORD use_map, BOOL skip_int) {
    if((stored->super.swizzle_map & use_map) != new->super.swizzle_map) return FALSE;
    if(stored->super.clip_enabled != new->super.clip_enabled) return FALSE;
    if(stored->super.fog_src != new->super.fog_src) return FALSE;
    if(stored->clip.boolclip_compare != new->clip.boolclip_compare) return FALSE;
    if(stored->ps_signature != new->ps_signature) return FALSE;
    if(stored->vertex.samplers_compare != new->vertex.samplers_compare) return FALSE;
    if(skip_int) return TRUE;

    return !memcmp(stored->loop_ctrl, new->loop_ctrl, sizeof(stored->loop_ctrl));
}

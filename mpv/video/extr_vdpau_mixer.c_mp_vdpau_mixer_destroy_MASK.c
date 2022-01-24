#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vdp_functions {int /*<<< orphan*/  (* video_mixer_destroy ) (scalar_t__) ;} ;
struct mp_vdpau_mixer {scalar_t__ video_mixer; TYPE_1__* ctx; } ;
typedef  int /*<<< orphan*/  VdpStatus ;
struct TYPE_2__ {struct vdp_functions vdp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_vdpau_mixer*,char*) ; 
 scalar_t__ VDP_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_vdpau_mixer*) ; 

void FUNC3(struct mp_vdpau_mixer *mixer)
{
    struct vdp_functions *vdp = &mixer->ctx->vdp;
    VdpStatus vdp_st;
    if (mixer->video_mixer != VDP_INVALID_HANDLE) {
        vdp_st = vdp->video_mixer_destroy(mixer->video_mixer);
        FUNC0(mixer, "Error when calling vdp_video_mixer_destroy");
    }
    FUNC2(mixer);
}
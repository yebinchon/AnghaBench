
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voctrl_playback_state {scalar_t__ paused; int percent_pos; int taskbar_progress; int playing; } ;
struct vo_w32_state {int window; int taskbar_list3; int tbtnCreated; struct voctrl_playback_state current_pstate; } ;


 int ITaskbarList3_SetProgressState (int ,int ,int ) ;
 int ITaskbarList3_SetProgressValue (int ,int ,int ,int) ;
 int TBPF_NOPROGRESS ;
 int TBPF_NORMAL ;
 int TBPF_PAUSED ;

__attribute__((used)) static void update_playback_state(struct vo_w32_state *w32)
{
    struct voctrl_playback_state *pstate = &w32->current_pstate;

    if (!w32->taskbar_list3 || !w32->tbtnCreated)
        return;

    if (!pstate->playing || !pstate->taskbar_progress) {
        ITaskbarList3_SetProgressState(w32->taskbar_list3, w32->window,
                                       TBPF_NOPROGRESS);
        return;
    }

    ITaskbarList3_SetProgressValue(w32->taskbar_list3, w32->window,
                                   pstate->percent_pos, 100);
    ITaskbarList3_SetProgressState(w32->taskbar_list3, w32->window,
                                   pstate->paused ? TBPF_PAUSED :
                                                    TBPF_NORMAL);
}

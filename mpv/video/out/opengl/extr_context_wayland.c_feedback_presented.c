
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct wp_presentation_feedback {int dummy; } ;
struct vo_wayland_state {TYPE_1__* sync; int user_sbc; } ;
typedef long long int64_t ;
struct TYPE_2__ {long long ust; int msc; int refresh_usec; int filled; int sbc; } ;


 int last_available_sync (struct vo_wayland_state*) ;
 int queue_new_sync (struct vo_wayland_state*) ;
 int vo_wayland_sync_shift (struct vo_wayland_state*) ;
 int wp_presentation_feedback_destroy (struct wp_presentation_feedback*) ;

__attribute__((used)) static void feedback_presented(void *data, struct wp_presentation_feedback *fback,
                              uint32_t tv_sec_hi, uint32_t tv_sec_lo,
                              uint32_t tv_nsec, uint32_t refresh_nsec,
                              uint32_t seq_hi, uint32_t seq_lo,
                              uint32_t flags)
{
    struct vo_wayland_state *wl = data;
    wp_presentation_feedback_destroy(fback);
    vo_wayland_sync_shift(wl);
    int index = last_available_sync(wl);
    if (index < 0) {
        queue_new_sync(wl);
        index = 0;
    }
    int64_t sec = (uint64_t) tv_sec_lo + ((uint64_t) tv_sec_hi << 32);
    wl->sync[index].sbc = wl->user_sbc;
    wl->sync[index].ust = sec * 1000000LL + (uint64_t) tv_nsec / 1000;
    wl->sync[index].msc = (uint64_t) seq_lo + ((uint64_t) seq_hi << 32);
    wl->sync[index].refresh_usec = (uint64_t)refresh_nsec/1000;
    wl->sync[index].filled = 1;
}

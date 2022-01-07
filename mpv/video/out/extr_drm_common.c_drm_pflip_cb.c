
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct vo_vsync_info {unsigned int vsync_duration; unsigned int skipped_vsyncs; unsigned int last_queue_display_time; } ;
struct timespec {long long tv_sec; int tv_nsec; } ;
struct drm_vsync_tuple {unsigned int msc; scalar_t__ ust; unsigned int sbc; } ;
struct drm_pflip_cb_closure {int* waiting_for_flip; struct vo_vsync_info* vsync_info; struct drm_vsync_tuple* frame_vsync; struct drm_vsync_tuple* vsync; } ;


 int CLOCK_MONOTONIC ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 unsigned int const mp_time_us () ;
 int talloc_free (struct drm_pflip_cb_closure*) ;

void drm_pflip_cb(int fd, unsigned int msc, unsigned int sec,
                  unsigned int usec, void *data)
{
    struct drm_pflip_cb_closure *closure = data;

    struct drm_vsync_tuple *vsync = closure->vsync;



    struct drm_vsync_tuple *frame_vsync = closure->frame_vsync;
    struct vo_vsync_info *vsync_info = closure->vsync_info;

    const bool ready =
        (vsync->msc != 0) &&
        (frame_vsync->ust != 0) && (frame_vsync->msc != 0);

    const uint64_t ust = (sec * 1000000LL) + usec;

    const unsigned int msc_since_last_flip = msc - vsync->msc;

    vsync->ust = ust;
    vsync->msc = msc;

    if (ready) {

        struct timespec ts;
        if (clock_gettime(CLOCK_MONOTONIC, &ts))
            goto fail;
        const uint64_t now_monotonic = ts.tv_sec * 1000000LL + ts.tv_nsec / 1000;
        const uint64_t ust_mp_time = mp_time_us() - (now_monotonic - vsync->ust);

        const uint64_t ust_since_enqueue = vsync->ust - frame_vsync->ust;
        const unsigned int msc_since_enqueue = vsync->msc - frame_vsync->msc;
        const unsigned int sbc_since_enqueue = vsync->sbc - frame_vsync->sbc;

        vsync_info->vsync_duration = ust_since_enqueue / msc_since_enqueue;
        vsync_info->skipped_vsyncs = msc_since_last_flip - 1;
        vsync_info->last_queue_display_time = ust_mp_time + (sbc_since_enqueue * vsync_info->vsync_duration);
    }

fail:
    *closure->waiting_for_flip = 0;
    talloc_free(closure);
}

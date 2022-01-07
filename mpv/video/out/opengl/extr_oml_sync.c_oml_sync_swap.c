
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {long long tv_sec; int tv_nsec; } ;
struct oml_sync {int state_ok; scalar_t__ user_sbc; scalar_t__ last_ust; scalar_t__ last_msc; scalar_t__ last_sbc; scalar_t__ vsync_duration; scalar_t__ last_sbc_mp_time; scalar_t__ last_queue_display_time; scalar_t__ last_skipped_vsyncs; } ;
typedef scalar_t__ int64_t ;


 int CLOCK_MONOTONIC ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 scalar_t__ mp_time_us () ;
 int oml_sync_reset (struct oml_sync*) ;

void oml_sync_swap(struct oml_sync *oml, int64_t ust, int64_t msc, int64_t sbc)
{
    if (!oml->state_ok)
        oml_sync_reset(oml);

    oml->last_skipped_vsyncs = 0;
    oml->user_sbc += 1;

    if (sbc < 0)
        return;

    oml->state_ok = 1;

    int64_t ust_passed = oml->last_ust ? ust - oml->last_ust : 0;
    oml->last_ust = ust;

    int64_t msc_passed = oml->last_msc ? msc - oml->last_msc : 0;
    oml->last_msc = msc;

    int64_t sbc_passed = sbc - oml->last_sbc;
    oml->last_sbc = sbc;


    if (msc_passed && ust_passed)
        oml->vsync_duration = ust_passed / msc_passed;






    if (sbc_passed) {
        struct timespec ts;
        if (clock_gettime(CLOCK_MONOTONIC, &ts))
            return;
        uint64_t now_monotonic = ts.tv_sec * 1000000LL + ts.tv_nsec / 1000;
        uint64_t ust_mp_time = mp_time_us() - (now_monotonic - ust);



        oml->last_sbc_mp_time = ust_mp_time;
    }



    if (!sbc)
        return;






    oml->last_queue_display_time =
        oml->last_sbc_mp_time + (oml->user_sbc - sbc) * oml->vsync_duration;
}

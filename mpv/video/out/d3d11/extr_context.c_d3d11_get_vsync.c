
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vo_vsync_info {void* last_queue_display_time; void* vsync_duration; scalar_t__ skipped_vsyncs; } ;
struct ra_swapchain {struct priv* priv; } ;
struct priv {unsigned int last_sync_refresh_count; unsigned int last_sync_qpc_time; unsigned int vsync_duration_qpc; int last_submit_qpc; int swapchain; TYPE_1__* opts; } ;
typedef int int64_t ;
typedef unsigned int UINT ;
struct TYPE_6__ {unsigned int QuadPart; } ;
struct TYPE_7__ {unsigned int SyncRefreshCount; unsigned int PresentCount; unsigned int PresentRefreshCount; TYPE_2__ SyncQPCTime; } ;
struct TYPE_5__ {int sync_interval; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_3__ DXGI_FRAME_STATISTICS ;


 scalar_t__ DXGI_ERROR_FRAME_STATISTICS_DISJOINT ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IDXGISwapChain_GetFrameStatistics (int ,TYPE_3__*) ;
 scalar_t__ IDXGISwapChain_GetLastPresentCount (int ,unsigned int*) ;
 void* mp_time_us () ;
 void* qpc_to_us (struct ra_swapchain*,int) ;
 void* qpc_us_now (struct ra_swapchain*) ;

__attribute__((used)) static void d3d11_get_vsync(struct ra_swapchain *sw, struct vo_vsync_info *info)
{
    struct priv *p = sw->priv;
    HRESULT hr;


    if (p->opts->sync_interval != 1)
        return;



    UINT submit_count;
    hr = IDXGISwapChain_GetLastPresentCount(p->swapchain, &submit_count);
    if (FAILED(hr))
        return;






    DXGI_FRAME_STATISTICS stats;
    hr = IDXGISwapChain_GetFrameStatistics(p->swapchain, &stats);
    if (hr == DXGI_ERROR_FRAME_STATISTICS_DISJOINT) {
        p->last_sync_refresh_count = 0;
        p->last_sync_qpc_time = 0;
    }
    if (FAILED(hr))
        return;


    info->skipped_vsyncs = 0;




    unsigned src_passed = 0;
    if (stats.SyncRefreshCount && p->last_sync_refresh_count)
        src_passed = stats.SyncRefreshCount - p->last_sync_refresh_count;
    p->last_sync_refresh_count = stats.SyncRefreshCount;


    unsigned sqt_passed = 0;
    if (stats.SyncQPCTime.QuadPart && p->last_sync_qpc_time)
        sqt_passed = stats.SyncQPCTime.QuadPart - p->last_sync_qpc_time;
    p->last_sync_qpc_time = stats.SyncQPCTime.QuadPart;


    if (src_passed && sqt_passed)
        p->vsync_duration_qpc = sqt_passed / src_passed;
    if (p->vsync_duration_qpc)
        info->vsync_duration = qpc_to_us(sw, p->vsync_duration_qpc);



    if (p->vsync_duration_qpc && stats.PresentCount &&
        stats.PresentRefreshCount && stats.SyncRefreshCount &&
        stats.SyncQPCTime.QuadPart)
    {




        unsigned expected_sync_pc = stats.PresentCount +
            (stats.SyncRefreshCount - stats.PresentRefreshCount);



        int queued_frames = submit_count - expected_sync_pc;
        int64_t last_queue_display_time_qpc = stats.SyncQPCTime.QuadPart +
            queued_frames * p->vsync_duration_qpc;



        if (last_queue_display_time_qpc >= p->last_submit_qpc) {
            info->last_queue_display_time = mp_time_us() +
                (qpc_to_us(sw, last_queue_display_time_qpc) - qpc_us_now(sw));
        }
    }
}

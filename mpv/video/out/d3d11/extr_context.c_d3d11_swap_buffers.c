
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_swapchain {struct priv* priv; } ;
struct priv {TYPE_1__* opts; int swapchain; int last_submit_qpc; } ;
struct TYPE_5__ {int QuadPart; } ;
struct TYPE_4__ {int sync_interval; } ;
typedef TYPE_2__ LARGE_INTEGER ;


 int IDXGISwapChain_Present (int ,int ,int ) ;
 int QueryPerformanceCounter (TYPE_2__*) ;

__attribute__((used)) static void d3d11_swap_buffers(struct ra_swapchain *sw)
{
    struct priv *p = sw->priv;

    LARGE_INTEGER perf_count;
    QueryPerformanceCounter(&perf_count);
    p->last_submit_qpc = perf_count.QuadPart;

    IDXGISwapChain_Present(p->swapchain, p->opts->sync_interval, 0);
}

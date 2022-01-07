
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_resource {int access_count; TYPE_1__* device; } ;
struct wined3d_cs {scalar_t__ thread_id; int thread; } ;
struct TYPE_2__ {struct wined3d_cs* cs; } ;


 scalar_t__ GetCurrentThreadId () ;
 scalar_t__ InterlockedCompareExchange (int *,int ,int ) ;
 int wined3d_pause () ;

__attribute__((used)) static inline void wined3d_resource_wait_idle(struct wined3d_resource *resource)
{
    const struct wined3d_cs *cs = resource->device->cs;

    if (!cs->thread || cs->thread_id == GetCurrentThreadId())
        return;

    while (InterlockedCompareExchange(&resource->access_count, 0, 0))
        wined3d_pause();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vdpctx {scalar_t__ recent_vsync_time; scalar_t__ vsync_interval; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static inline uint64_t prev_vsync(struct vdpctx *vc, uint64_t ts)
{
    int64_t diff = (int64_t)(ts - vc->recent_vsync_time);
    int64_t offset = diff % vc->vsync_interval;
    if (offset < 0)
        offset += vc->vsync_interval;
    return ts - offset;
}

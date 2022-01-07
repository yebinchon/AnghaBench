
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; int len; } ;
struct pass_info {TYPE_1__ desc; int perf; } ;
struct mp_frame_perf {size_t count; int * desc; int * perf; } ;


 int VO_PASS_PERF_MAX ;

__attribute__((used)) static void frame_perf_data(struct pass_info pass[], struct mp_frame_perf *out)
{
    for (int i = 0; i < VO_PASS_PERF_MAX; i++) {
        if (!pass[i].desc.len)
            break;
        out->perf[out->count] = pass[i].perf;
        out->desc[out->count] = pass[i].desc.start;
        out->count++;
    }
}

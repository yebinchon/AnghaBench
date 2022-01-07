
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_swapchain {struct priv* priv; } ;
struct priv {int perf_freq; } ;
typedef int int64_t ;



__attribute__((used)) static int64_t qpc_to_us(struct ra_swapchain *sw, int64_t qpc)
{
    struct priv *p = sw->priv;




    return qpc / p->perf_freq * 1000000 +
        qpc % p->perf_freq * 1000000 / p->perf_freq;
}

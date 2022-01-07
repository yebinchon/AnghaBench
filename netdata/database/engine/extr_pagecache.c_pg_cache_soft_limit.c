
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ metric_API_producers; } ;
struct rrdengine_instance {unsigned long cache_pages_low_watermark; TYPE_1__ stats; } ;



unsigned long pg_cache_soft_limit(struct rrdengine_instance *ctx)
{

    return ctx->cache_pages_low_watermark + 2 * (unsigned long)ctx->stats.metric_API_producers;
}

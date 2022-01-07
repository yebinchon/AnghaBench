
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int cache_buffer; scalar_t__ demuxer; } ;



int get_cache_buffering_percentage(struct MPContext *mpctx)
{
    return mpctx->demuxer ? mpctx->cache_buffer : -1;
}

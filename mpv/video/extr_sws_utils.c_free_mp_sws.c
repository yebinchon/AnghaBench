
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_sws_context {int dst_filter; int src_filter; int sws; } ;


 int sws_freeContext (int ) ;
 int sws_freeFilter (int ) ;

__attribute__((used)) static void free_mp_sws(void *p)
{
    struct mp_sws_context *ctx = p;
    sws_freeContext(ctx->sws);
    sws_freeFilter(ctx->src_filter);
    sws_freeFilter(ctx->dst_filter);
}

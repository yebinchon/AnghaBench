
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_zimg_context {int zimg_dst; int zimg_src; int * zimg_graph; int * zimg_tmp; } ;


 int TA_FREEP (int *) ;
 int free (int *) ;
 int zimg_filter_graph_free (int *) ;

__attribute__((used)) static void destroy_zimg(struct mp_zimg_context *ctx)
{
    free(ctx->zimg_tmp);
    ctx->zimg_tmp = ((void*)0);
    zimg_filter_graph_free(ctx->zimg_graph);
    ctx->zimg_graph = ((void*)0);
    TA_FREEP(&ctx->zimg_src);
    TA_FREEP(&ctx->zimg_dst);
}

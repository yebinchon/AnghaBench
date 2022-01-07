
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct surface_ref {size_t index; struct mp_vdpau_ctx* ctx; } ;
struct mp_vdpau_ctx {int pool_lock; TYPE_1__* video_surfaces; } ;
struct TYPE_2__ {int in_use; } ;


 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int talloc_free (struct surface_ref*) ;

__attribute__((used)) static void release_decoder_surface(void *ptr)
{
    struct surface_ref *r = ptr;
    struct mp_vdpau_ctx *ctx = r->ctx;

    pthread_mutex_lock(&ctx->pool_lock);
    assert(ctx->video_surfaces[r->index].in_use);
    ctx->video_surfaces[r->index].in_use = 0;
    pthread_mutex_unlock(&ctx->pool_lock);

    talloc_free(r);
}

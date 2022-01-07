
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct free_dr_context {int ref; TYPE_1__* dr; } ;
struct TYPE_2__ {int dr_in_flight; } ;


 int assert (unsigned long long) ;
 unsigned long long atomic_fetch_add (int *,int) ;
 int av_buffer_unref (int *) ;
 int talloc_free (struct free_dr_context*) ;

__attribute__((used)) static void dr_thread_free(void *ptr)
{
    struct free_dr_context *ctx = ptr;

    unsigned long long v = atomic_fetch_add(&ctx->dr->dr_in_flight, -1);
    assert(v);

    av_buffer_unref(&ctx->ref);
    talloc_free(ctx);
}

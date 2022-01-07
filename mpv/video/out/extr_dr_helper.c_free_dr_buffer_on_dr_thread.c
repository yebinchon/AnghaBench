
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct free_dr_context {struct dr_helper* dr; } ;
struct dr_helper {int dispatch; int thread_lock; int thread; scalar_t__ thread_valid; } ;


 int dr_thread_free (struct free_dr_context*) ;
 int mp_dispatch_enqueue (int ,int (*) (struct free_dr_context*),struct free_dr_context*) ;
 scalar_t__ pthread_equal (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;

__attribute__((used)) static void free_dr_buffer_on_dr_thread(void *opaque, uint8_t *data)
{
    struct free_dr_context *ctx = opaque;
    struct dr_helper *dr = ctx->dr;

    pthread_mutex_lock(&dr->thread_lock);
    bool on_this_thread =
        dr->thread_valid && pthread_equal(ctx->dr->thread, pthread_self());
    pthread_mutex_unlock(&dr->thread_lock);



    if (on_this_thread) {
        dr_thread_free(ctx);
    } else {
        mp_dispatch_enqueue(dr->dispatch, dr_thread_free, ctx);
    }
}

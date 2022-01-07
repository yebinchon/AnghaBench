
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwan_thread {int wheel; int pending_fds; int self; int * pipe_fd; int epoll_fd; } ;
struct TYPE_2__ {int count; struct lwan_thread* threads; int barrier; } ;
struct lwan {TYPE_1__ thread; } ;


 int close (int ) ;
 int free (struct lwan_thread*) ;
 int lwan_status_debug (char*) ;
 int lwan_thread_nudge (struct lwan_thread*) ;
 int pthread_barrier_destroy (int *) ;
 int pthread_barrier_wait (int *) ;
 int pthread_join (int ,int *) ;
 int spsc_queue_free (int *) ;
 int timeouts_close (int ) ;

void lwan_thread_shutdown(struct lwan *l)
{
    lwan_status_debug("Shutting down threads");

    for (int i = 0; i < l->thread.count; i++) {
        struct lwan_thread *t = &l->thread.threads[i];

        close(t->epoll_fd);
        lwan_thread_nudge(t);
    }

    pthread_barrier_wait(&l->thread.barrier);
    pthread_barrier_destroy(&l->thread.barrier);

    for (int i = 0; i < l->thread.count; i++) {
        struct lwan_thread *t = &l->thread.threads[i];

        close(t->pipe_fd[0]);

        close(t->pipe_fd[1]);


        pthread_join(l->thread.threads[i].self, ((void*)0));
        spsc_queue_free(&t->pending_fds);
        timeouts_close(t->wheel);
    }

    free(l->thread.threads);
}

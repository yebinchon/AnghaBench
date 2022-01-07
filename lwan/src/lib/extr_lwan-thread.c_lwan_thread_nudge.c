
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct lwan_thread {int * pipe_fd; } ;
typedef int event ;


 scalar_t__ UNLIKELY (int) ;
 int lwan_status_perror (char*) ;
 scalar_t__ write (int ,int*,int) ;

void lwan_thread_nudge(struct lwan_thread *t)
{
    uint64_t event = 1;

    if (UNLIKELY(write(t->pipe_fd[1], &event, sizeof(event)) < 0))
        lwan_status_perror("write");
}

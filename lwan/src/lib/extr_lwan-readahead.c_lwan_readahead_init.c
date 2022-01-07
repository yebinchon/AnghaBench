
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;


 int F_GETFL ;
 int F_SETFL ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int PIPE_DIRECT_FLAG ;
 int SCHED_IDLE ;
 int fcntl (scalar_t__,int ,...) ;
 int lwan_readahead_loop ;
 int lwan_status_critical_perror (char*) ;
 int lwan_status_debug (char*) ;
 int lwan_status_perror (char*) ;
 scalar_t__ pipe2 (scalar_t__*,int) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_setschedparam (int ,int ,struct sched_param*) ;
 scalar_t__* readahead_pipe_fd ;
 int readahead_self ;

void lwan_readahead_init(void)
{
    int flags;

    if (readahead_pipe_fd[0] != readahead_pipe_fd[1])
        return;

    lwan_status_debug("Initializing low priority readahead thread");

    if (pipe2(readahead_pipe_fd, O_CLOEXEC | PIPE_DIRECT_FLAG) < 0)
        lwan_status_critical_perror("pipe2");


    flags = fcntl(readahead_pipe_fd[1], F_GETFL);
    if (flags < 0)
        lwan_status_critical_perror("fcntl");
    if (fcntl(readahead_pipe_fd[1], F_SETFL, flags | O_NONBLOCK) < 0)
        lwan_status_critical_perror("fcntl");

    if (pthread_create(&readahead_self, ((void*)0), lwan_readahead_loop, ((void*)0)))
        lwan_status_critical_perror("pthread_create");






}

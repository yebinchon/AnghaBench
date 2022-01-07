
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_readahead_cmd {int cmd; } ;
typedef int cmd ;


 int SHUTDOWN ;
 int close (int) ;
 int lwan_status_debug (char*) ;
 int pthread_join (int ,int *) ;
 int* readahead_pipe_fd ;
 int readahead_self ;
 int write (int,struct lwan_readahead_cmd*,int) ;

void lwan_readahead_shutdown(void)
{
    struct lwan_readahead_cmd cmd = {
        .cmd = SHUTDOWN,
    };

    if (readahead_pipe_fd[0] == readahead_pipe_fd[1] &&
        readahead_pipe_fd[0] == -1)
        return;

    lwan_status_debug("Shutting down readahead thread");

    write(readahead_pipe_fd[1], &cmd, sizeof(cmd));
    pthread_join(readahead_self, ((void*)0));

    close(readahead_pipe_fd[0]);
    close(readahead_pipe_fd[1]);
    readahead_pipe_fd[0] = readahead_pipe_fd[1] = -1;
}

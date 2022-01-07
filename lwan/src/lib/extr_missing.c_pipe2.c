
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SETFL ;
 int close (int) ;
 int errno ;
 scalar_t__ fcntl (int,int ,int) ;
 int pipe (int*) ;

int pipe2(int pipefd[2], int flags)
{
    int r;

    r = pipe(pipefd);
    if (r < 0)
        return r;

    if (fcntl(pipefd[0], F_SETFL, flags) < 0 ||
        fcntl(pipefd[1], F_SETFL, flags) < 0) {
        int saved_errno = errno;

        close(pipefd[0]);
        close(pipefd[1]);

        errno = saved_errno;
        return -1;
    }

    return 0;
}

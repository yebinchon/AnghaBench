
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_ERR ;
 int msg (int ,char*) ;
 int set_cloexec_action (int) ;

void
set_cloexec(int fd)
{
    if (!set_cloexec_action(fd))
    {
        msg(M_ERR, "Set FD_CLOEXEC flag on file descriptor failed");
    }
}

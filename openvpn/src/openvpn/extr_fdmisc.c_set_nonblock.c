
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_ERR ;
 int msg (int ,char*) ;
 int set_nonblock_action (int) ;

void
set_nonblock(int fd)
{
    if (!set_nonblock_action(fd))
    {
        msg(M_ERR, "Set socket to non-blocking mode failed");
    }
}

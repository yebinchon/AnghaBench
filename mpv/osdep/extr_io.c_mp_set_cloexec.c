
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int fcntl (int,int ,...) ;

bool mp_set_cloexec(int fd)
{
    return 1;
}

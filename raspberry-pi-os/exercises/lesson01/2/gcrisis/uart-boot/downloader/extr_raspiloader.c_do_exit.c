
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int exit (int) ;

void do_exit(int fd, int res) {

    if (fd != -1) close(fd);
    exit(res);
}

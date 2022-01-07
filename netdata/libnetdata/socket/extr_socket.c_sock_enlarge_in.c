
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bs ;


 int LARGE_SOCK_SIZE ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int error (char*,int) ;
 int setsockopt (int,int ,int ,int*,int) ;

int sock_enlarge_in(int fd) {
    int ret, bs = LARGE_SOCK_SIZE;

    ret = setsockopt(fd, SOL_SOCKET, SO_RCVBUF, &bs, sizeof(bs));

    if(ret == -1)
        error("Failed to set SO_RCVBUF on socket %d", fd);

    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reuse ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int error (char*,int) ;
 int setsockopt (int,int ,int ,int*,int) ;

int sock_setreuse(int fd, int reuse) {
    int ret = setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &reuse, sizeof(reuse));

    if(ret == -1)
        error("Failed to set SO_REUSEADDR on socket %d", fd);

    return ret;
}

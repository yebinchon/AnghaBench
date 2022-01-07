
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reuse ;


 scalar_t__ ENOPROTOOPT ;
 int SOL_SOCKET ;
 int SO_REUSEPORT ;
 scalar_t__ errno ;
 int error (char*,int) ;
 int setsockopt (int,int ,int ,int*,int) ;

int sock_setreuse_port(int fd, int reuse) {
    int ret;






    ret = -1;


    return ret;
}

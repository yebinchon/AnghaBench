
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ARG ;
 int ERR_LIB_SYS ;
 int ERR_raise_data (int ,int ,char*) ;
 int get_last_socket_error () ;
 int ioctlsocket (int,long,char*) ;

int BIO_socket_ioctl(int fd, long type, void *arg)
{
    int i;
    i = ioctlsocket(fd, type, arg);

    if (i < 0)
        ERR_raise_data(ERR_LIB_SYS, get_last_socket_error(),
                       "calling ioctlsocket()");
    return i;
}

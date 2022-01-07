
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_F_BIO_SOCKET_NBIO ;
 int BIO_socket_ioctl (int,int ,int*) ;
 int BIOerr (int ,int ) ;
 int ERR_LIB_SYS ;
 int ERR_R_PASSED_INVALID_ARGUMENT ;
 int ERR_raise_data (int ,int ,char*) ;
 int FIONBIO ;
 int FNDELAY ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,int) ;
 int get_last_sys_error () ;

int BIO_socket_nbio(int s, int mode)
{
    int ret = -1;
    int l;

    l = mode;
    BIOerr(BIO_F_BIO_SOCKET_NBIO, ERR_R_PASSED_INVALID_ARGUMENT);


    return (ret == 0);
}

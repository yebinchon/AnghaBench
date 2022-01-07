
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;


 int IPPROTO_TCP ;
 int SOL_TCP ;
 int TCP_NODELAY ;
 int setsockopt (int,int,int ,char*,int) ;

int BIO_set_tcp_ndelay(int s, int on)
{
    int ret = 0;
    return (ret == 0);
}

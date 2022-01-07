
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int IPPROTO_TCP ;
 int TCP_NODELAY ;
 int dbg (char*) ;
 int setsockopt (int,int ,int ,int const*,int) ;

int usbip_net_set_nodelay(int sockfd)
{
 const int val = 1;
 int ret;

 ret = setsockopt(sockfd, IPPROTO_TCP, TCP_NODELAY, &val, sizeof(val));
 if (ret < 0)
  dbg("setsockopt: TCP_NODELAY");

 return ret;
}

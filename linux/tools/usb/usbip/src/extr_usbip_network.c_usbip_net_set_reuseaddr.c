
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int dbg (char*) ;
 int setsockopt (int,int ,int ,int const*,int) ;

int usbip_net_set_reuseaddr(int sockfd)
{
 const int val = 1;
 int ret;

 ret = setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &val, sizeof(val));
 if (ret < 0)
  dbg("setsockopt: SO_REUSEADDR");

 return ret;
}

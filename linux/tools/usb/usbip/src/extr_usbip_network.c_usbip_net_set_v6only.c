
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int dbg (char*) ;
 int setsockopt (int,int ,int ,int const*,int) ;

int usbip_net_set_v6only(int sockfd)
{
 const int val = 1;
 int ret;

 ret = setsockopt(sockfd, IPPROTO_IPV6, IPV6_V6ONLY, &val, sizeof(val));
 if (ret < 0)
  dbg("setsockopt: IPV6_V6ONLY");

 return ret;
}

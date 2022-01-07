
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int mtu ;


 int IPV6_MTU ;
 int IP_MTU ;
 int SOL_IP ;
 int SOL_IPV6 ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*,unsigned int) ;
 int getsockopt (int,int ,int ,unsigned int*,int*) ;
 int stderr ;

__attribute__((used)) static unsigned int get_path_mtu(int fd, bool is_ipv4)
{
 socklen_t vallen;
 unsigned int mtu;
 int ret;

 vallen = sizeof(mtu);
 if (is_ipv4)
  ret = getsockopt(fd, SOL_IP, IP_MTU, &mtu, &vallen);
 else
  ret = getsockopt(fd, SOL_IPV6, IPV6_MTU, &mtu, &vallen);

 if (ret)
  error(1, errno, "getsockopt mtu");


 fprintf(stderr, "path mtu (read):  %u\n", mtu);
 return mtu;
}

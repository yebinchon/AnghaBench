
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int usbip_net_xmit (int,void*,size_t,int) ;

ssize_t usbip_net_send(int sockfd, void *buff, size_t bufflen)
{
 return usbip_net_xmit(sockfd, buff, bufflen, 1);
}

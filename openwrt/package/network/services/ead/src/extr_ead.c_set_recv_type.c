
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ll {int dummy; } ;
struct ifreq {int dummy; } ;
typedef int pcap_t ;
typedef int mask ;


 int PACKET_BROADCAST ;
 int PACKET_RECV_TYPE ;
 int SOL_PACKET ;
 int pcap_get_selectable_fd (int *) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static void
set_recv_type(pcap_t *p, bool rx)
{
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 int ETH_P_IP ;
 int PCAP_MRU ;
 int PCAP_TIMEOUT ;
 int htons (int ) ;
 int pcap_activate (int *) ;
 int * pcap_create (char const*,char*) ;
 int pcap_set_buffer_size (int *,int) ;
 int pcap_set_promisc (int *,int) ;
 int pcap_set_protocol_linux (int *,int ) ;
 int pcap_set_snaplen (int *,int) ;
 int pcap_set_timeout (int *,int ) ;
 int set_recv_type (int *,int) ;

__attribute__((used)) static pcap_t *
ead_open_pcap(const char *ifname, char *errbuf, bool rx)
{
 pcap_t *p;

 p = pcap_create(ifname, errbuf);
 if (p == ((void*)0))
  goto out;

 pcap_set_snaplen(p, PCAP_MRU);
 pcap_set_promisc(p, rx);
 pcap_set_timeout(p, PCAP_TIMEOUT);
 pcap_set_protocol_linux(p, (rx ? htons(ETH_P_IP) : 0));
 pcap_set_buffer_size(p, (rx ? 10 : 1) * PCAP_MRU);
 pcap_activate(p);
 set_recv_type(p, rx);
out:
 return p;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_pkthdr {int dummy; } ;
typedef int pcap_t ;


 int my_null (int,int *,struct pcap_pkthdr*) ;
 unsigned char const* pcap_next (int *,struct pcap_pkthdr*) ;

__attribute__((used)) static const unsigned char *null_PCAP_NEXT(pcap_t *p, struct pcap_pkthdr *h)
{



    my_null(3, p, h);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_t ;


 int pcap_findalldevs (int **,char*) ;
 int seterr (char*,char*) ;

__attribute__((used)) static int null_PCAP_FINDALLDEVS(pcap_if_t **alldevs, char *errbuf)
{



    *alldevs = 0;
    seterr(errbuf, "libpcap not loaded");
    return -1;
}

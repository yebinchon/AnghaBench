
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pcap_lookupdev (char*) ;
 int seterr (char*,char*) ;

__attribute__((used)) static char *null_PCAP_LOOKUPDEV(char *errbuf)
{



    seterr(errbuf, "libpcap not loaded");
    return "";
}

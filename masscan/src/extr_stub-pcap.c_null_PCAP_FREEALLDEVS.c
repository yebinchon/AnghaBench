
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_t ;


 int UNUSEDPARM (int *) ;
 void pcap_freealldevs (int *) ;

__attribute__((used)) static void null_PCAP_FREEALLDEVS(pcap_if_t *alldevs)
{



    UNUSEDPARM(alldevs);
    return;
}

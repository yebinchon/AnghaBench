
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pcap_if_t ;
struct TYPE_2__ {int (* findalldevs ) (int **,char*) ;char const* (* dev_name ) (int const*) ;int * (* dev_next ) (int const*) ;} ;


 TYPE_1__ PCAP ;
 int PCAP_ERRBUF_SIZE ;
 int fprintf (int ,char*) ;
 int stderr ;
 int stub1 (int **,char*) ;
 int * stub2 (int const*) ;
 char const* stub3 (int const*) ;

__attribute__((used)) static const char *
adapter_from_index(unsigned index)
{
    pcap_if_t *alldevs;
    char errbuf[PCAP_ERRBUF_SIZE];
    int x;

    x = PCAP.findalldevs(&alldevs, errbuf);
    if (x != -1) {
        const pcap_if_t *d;

        if (alldevs == ((void*)0)) {
            fprintf(stderr, "ERR:libpcap: no adapters found, are you sure you are root?\n");
        }

        for(d=alldevs; d; d=PCAP.dev_next(d)) {
            if (index-- == 0)
                return PCAP.dev_name(d);
        }
        return 0;
    } else {
        return 0;
    }
}

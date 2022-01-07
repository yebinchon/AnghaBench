
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* PCAP_HANDLE_PACKET ;


 int UNUSEDPARM (void*) ;
 int pcap_dispatch (void*,unsigned int,void*,void*) ;

__attribute__((used)) static unsigned null_PCAP_DISPATCH(void *hPcap, unsigned how_many_packets, PCAP_HANDLE_PACKET handler, void *handle_data)
{



    UNUSEDPARM(hPcap);UNUSEDPARM(how_many_packets);UNUSEDPARM(handler);UNUSEDPARM(handle_data);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 int my_null (int,int *,unsigned char const*,int) ;
 int pcap_sendpacket (int *,unsigned char const*,int) ;

__attribute__((used)) static int null_PCAP_SENDPACKET(pcap_t *p, const unsigned char *buf, int size)
{



    my_null(3, p, buf, size);
 return 0;
}

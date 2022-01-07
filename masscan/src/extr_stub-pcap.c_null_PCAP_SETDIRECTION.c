
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;
typedef int pcap_direction_t ;


 int my_null (int,int *,int ) ;
 int pcap_setdirection (int *,int ) ;

__attribute__((used)) static int null_PCAP_SETDIRECTION(pcap_t *p, pcap_direction_t d)
{



 my_null(2, p, d);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 int UNUSEDPARM (int *) ;
 char const* pcap_geterr (int *) ;

__attribute__((used)) static const char*null_PCAP_GETERR(pcap_t *p)
{



 UNUSEDPARM(p);
 return "(unknown)";
}

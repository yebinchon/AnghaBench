
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 int * my_null (int,char const*,char*) ;
 int * pcap_open_offline (char const*,char*) ;

__attribute__((used)) static pcap_t *null_PCAP_OPEN_OFFLINE(const char *fname, char *errbuf)
{



    return my_null(2, fname, errbuf);
}

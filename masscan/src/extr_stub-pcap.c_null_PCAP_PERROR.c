
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 int UNUSEDPARM (int *) ;
 int fprintf (int ,char*,char*) ;
 int pcap_perror (int *,char*) ;
 int perror (char*) ;
 int stderr ;

__attribute__((used)) static void null_PCAP_PERROR(pcap_t *p, char *prefix)
{




 UNUSEDPARM(p);
 fprintf(stderr, "%s\n", prefix);
    perror("pcap");
}

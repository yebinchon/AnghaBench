
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct bpf_program {int dummy; } ;
typedef int pcap_t ;


 int DLT_PPP_PPPD ;
 int PPP_HDRLEN ;
 int atoi (char*) ;
 int bpf_dump (struct bpf_program*,int) ;
 scalar_t__ pcap_compile (int *,struct bpf_program*,char*,int,int ) ;
 char* pcap_geterr (int *) ;
 int * pcap_open_dead (int ,int ) ;
 int printf (char*,char*) ;
 int strcmp (char*,char*) ;

int main (int argc, char ** argv)
{
    pcap_t *pc;
    struct bpf_program filter;
    u_int32_t netmask=0;

    int dflag = 3;
    if (argc == 4)
    {
 if (!strcmp (argv[1], "-d"))
 {
     dflag = atoi (argv[2]);
     argv += 2;
     argc -=2;
 }
    }
    if (argc != 2)
    {
 printf ("usage; %s [ -d <debug_level> ] expression\n", argv[0]);
 return 1;
    }

    pc = pcap_open_dead(DLT_PPP_PPPD, PPP_HDRLEN);
    if (pcap_compile(pc, &filter, argv[1], 1, netmask) == 0)
    {
 printf ("#\n# Expression: %s\n#\n", argv[1]);
 bpf_dump (&filter, dflag);
 return 0;
    }
    else
    {
 printf("error in active-filter expression: %s\n", pcap_geterr(pc));
    }
    return 1;
}

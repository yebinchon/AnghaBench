
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pcap_payloads_filename; char* nmap_payloads_filename; char* nmap_service_probes_filename; int probes; int * udp; int * oproto; } ;
struct Masscan {TYPE_1__ payloads; } ;
typedef int FILE ;


 int fclose (int *) ;
 int fopen_s (int **,char const*,char*) ;
 int nmapserviceprobes_free (int ) ;
 int nmapserviceprobes_read_file (char const*) ;
 int payloads_read_pcap (char const*,int *,int *) ;
 void* payloads_udp_create () ;
 int payloads_udp_readfile (int *,char const*,int *) ;
 int perror (char const*) ;

void
masscan_load_database_files(struct Masscan *masscan)
{
    const char *filename;




    filename = masscan->payloads.pcap_payloads_filename;
    if (filename) {
        if (masscan->payloads.udp == ((void*)0))
            masscan->payloads.udp = payloads_udp_create();
        if (masscan->payloads.oproto == ((void*)0))
            masscan->payloads.oproto = payloads_udp_create();

        payloads_read_pcap(filename, masscan->payloads.udp, masscan->payloads.oproto);
    }




    filename = masscan->payloads.nmap_payloads_filename;
    if (filename) {
        FILE *fp;
        int err;


        err = fopen_s(&fp, filename, "rt");
        if (err || fp == ((void*)0)) {
            perror(filename);
        } else {
            if (masscan->payloads.udp == ((void*)0))
                masscan->payloads.udp = payloads_udp_create();

            payloads_udp_readfile(fp, filename, masscan->payloads.udp);

            fclose(fp);
        }
    }




    filename = masscan->payloads.nmap_service_probes_filename;
    if (filename) {
        if (masscan->payloads.probes)
            nmapserviceprobes_free(masscan->payloads.probes);

        masscan->payloads.probes = nmapserviceprobes_read_file(filename);
    }
}

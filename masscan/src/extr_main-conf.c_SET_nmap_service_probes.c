
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* nmap_service_probes_filename; } ;
struct Masscan {TYPE_1__ payloads; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,char*) ;
 int free (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int SET_nmap_service_probes(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);

    if (masscan->echo) {
        if ((masscan->payloads.nmap_service_probes_filename && masscan->payloads.nmap_service_probes_filename[0]) || masscan->echo_all)
            fprintf(masscan->echo, "nmap-service-probes = %s\n", masscan->payloads.nmap_service_probes_filename);
        return 0;
    }

    if (masscan->payloads.nmap_service_probes_filename)
        free(masscan->payloads.nmap_service_probes_filename);
    masscan->payloads.nmap_service_probes_filename = strdup(value);


    return CONF_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ServiceVersionInfo {int type; scalar_t__ is_a; int value; struct ServiceVersionInfo* next; } ;
struct ServiceProbeMatch {char* service; struct ServiceVersionInfo* versioninfo; scalar_t__ is_include_newlines; scalar_t__ is_case_insensitive; int regex_length; int regex; struct ServiceProbeMatch* next; } ;
struct NmapServiceProbeList {unsigned int count; struct NmapServiceProbe** list; int exclude; } ;
struct NmapServiceProbe {int protocol; char* name; int rarity; int totalwaitms; int tcpwrappedms; struct ServiceProbeMatch* match; int sslports; int ports; int hellolength; int hellostring; } ;
typedef int FILE ;
 int Templ_TCP ;
 int Templ_UDP ;
 int fprintf (int *,char*,...) ;
 int nmapserviceprobes_print_dstring (int *,int ,int ,char) ;
 int nmapserviceprobes_print_hello (int *,int ,int ,char) ;
 int nmapserviceprobes_print_ports (int *,int *,char*,int ) ;
 int strlen (int ) ;

void
nmapserviceprobes_print(const struct NmapServiceProbeList *list, FILE *fp)
{
    unsigned i;
    if (list == ((void*)0))
        return;

    nmapserviceprobes_print_ports(&list->exclude, fp, "Exclude", ~0);

    for (i=0; i<list->count; i++) {
        struct NmapServiceProbe *probe = list->list[i];
        struct ServiceProbeMatch *match;


        fprintf(fp, "Probe %s %s q",
                (probe->protocol==6)?"TCP":"UDP",
                probe->name);


        nmapserviceprobes_print_hello(fp, probe->hellostring, probe->hellolength, '|');

        fprintf(fp, "\n");
        if (probe->rarity)
            fprintf(fp, "rarity %u\n", probe->rarity);
        if (probe->totalwaitms)
            fprintf(fp, "totalwaitms %u\n", probe->totalwaitms);
        if (probe->tcpwrappedms)
            fprintf(fp, "tcpwrappedms %u\n", probe->tcpwrappedms);
        nmapserviceprobes_print_ports(&probe->ports, fp, "ports", (probe->protocol==6)?Templ_TCP:Templ_UDP);
        nmapserviceprobes_print_ports(&probe->sslports, fp, "sslports", (probe->protocol==6)?Templ_TCP:Templ_UDP);

        for (match=probe->match; match; match = match->next) {
            struct ServiceVersionInfo *vi;

            fprintf(fp, "match %s m", match->service);
            nmapserviceprobes_print_dstring(fp, match->regex, match->regex_length, '/');
            if (match->is_case_insensitive)
                fprintf(fp, "i");
            if (match->is_include_newlines)
                fprintf(fp, "s");
            fprintf(fp, " ");

            for (vi=match->versioninfo; vi; vi=vi->next) {
                const char *tag = "";
                switch (vi->type) {
                    case 129: tag = "u"; break;
                    case 130: tag = "p"; break;
                    case 128: tag = "v"; break;
                    case 132: tag = "i"; break;
                    case 133: tag = "h"; break;
                    case 131: tag = "o"; break;
                    case 134: tag = "e"; break;
                    case 135: tag = "cpe:"; break;
                }
                fprintf(fp, "%s", tag);
                nmapserviceprobes_print_dstring(fp, vi->value, strlen(vi->value), '/');
                if (vi->is_a)
                    fprintf(fp, "a");
                fprintf(fp, " ");
            }
            fprintf(fp, "\n");
        }

    }
}

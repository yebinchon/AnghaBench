
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Masscan {char* pcap_filename; scalar_t__ echo; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,char*) ;
 int strcpy_s (char*,int,char const*) ;

__attribute__((used)) static int SET_pcap_filename(struct Masscan *masscan, const char *name, const char *value)
{
    UNUSEDPARM(name);
    if (masscan->echo) {
        if (masscan->pcap_filename[0])
            fprintf(masscan->echo, "pcap-filename = %s\n", masscan->pcap_filename);
        return 0;
    }
    if (value)
        strcpy_s(masscan->pcap_filename, sizeof(masscan->pcap_filename), value);
    return CONF_OK;
}
